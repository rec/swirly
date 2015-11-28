#pragma once

#include "swirly/softstep/softstep.js"

// A "general" scroller that works for any sort of device where you can scroll a
// portion a string in a fixed character width display.
//
// rawOutput is a callback function that computes the scrolling string and sends
// it to Max (probably sending it to an outlet).
//
// config is a dictionary that can have the following properties:
//
//   callback:  this function is called when the last loop executes.
//
//   delta:     how to scroll - +1 is forward, -1 backward
//
//   message:   the message to scroll (default '').
//
//   period:    the delay between scroll increments, in ms (default 200).

Softstep.Display = function(rawOutput, config) {
    var self = this;

    function output(s) {
        s += '    ';
        for (var i = 0; i < 4; ++i)
            rawOutput(176, 50 + i, s.charCodeAt(i));
    };

    self.config = config || {};
    self.queue = [];
    self.running = false;
    self.displayLength = self.config.displayLength ||
        Softstep.Display.defaultDisplayLength;

    // Display the current state of the display.
    function Display() {
        var m = (self.config && self.config.message) || '';
        var len = self.displayLength;
        while (m.length < len)  // Only good if len is not large.
            m += ' ';
        m += ' ';

        output((m + m).substring(self.offset, self.offset + len));
    };

    // Pull off the next queue item, if any, and execute it.
    function NextQueue() {
        if (self.queue.length) {
            var command = self.queue.shift();
            if (typeof(command) == 'string')
                command = [command];

            self.SetMessage(command[0]);
            self.config.loops = parseInt(command[1] || '0');

            if (command.length > 2)
                self.config.period = parseInt(command[2]);

            self.Start();
        };
    };

    // Schedule the task exactly once.
    function Schedule() {
        var period = Math.max(self.config.period ||
                              Softstep.Display.defaultPeriod,
                              Softstep.Display.minimumPeriod);
        self.task.schedule(period);
    };

    self._Run = function() {
        self.running = Increment();
        Display();
        if (self.running)
            Schedule();
        else
            NextQueue();
    };

    // Deal with annoying bug in Task...
    function Run() {
        this._Run();
    };

    self.task = new Task(Run, this);

    function Increment() {
        self.offset += (self.config.delta || 1);
        if (self.offset < 0)
            self.offset = Length() - 1;
        else if (self.offset > Length())
            self.offset = 0;
        else
            return true;

        if (++self.loops <= self.config.loops)
            return true;

        if (self.config.loops)
            return false;

        return !self.queue.length;
    };

    // Length of the scrollable message (right-padded to fit the display).
    function Length() {
        var len = (self.config && self.config.message &&
                   self.config.message.length) || 0;
        return Math.max(self.displayLength, len);
    };

    self.Start = function() {
        self.Stop();
        self.loops = self.offset = 0;
        Display();
        Schedule();
        self.running = true;
    };

    self.Stop = function() {
        self.offset = 0;
        self.Freeze();
    };

    self.Clear = function() {
        self.config.message = '';
        self.queue = [];
        self.Stop();
    };

    self.Freeze = function() {
        self.task.cancel();

        Display();
        self.running = false;
    };

    self.Display = function(m) {
        self.config.message = m;
        self.offset = 0;
        self.loops = 0;
        Display();
    };

    self.Forward = function() {
        self.config.delta = 1;
    };

    self.Reverse = function() {
        self.config.delta = -1;
    };

    self.Period = function(p) {
        p = parseInt(p);
        self.config.period = p;
        if (self.task)
            self.task.interval = p;
    };

    self.Queue = function(_) {
        self.queue.push(arrayfromargs(arguments));
        if (!self.running)
            NextQueue();
    };
};

Softstep.Display.defaultDisplayLength = 4;
Softstep.Display.defaultPeriod = 200;

// I've taken Softstep.Display.minimumPeriod as low as 1 with no ill effects
// BUT the company warns you might brick your pedal.  BEWARE SETTING THIS TOO
// LOW.
Softstep.Display.minimumPeriod = 20;
