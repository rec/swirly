#pragma once

#include "swirly/instrument/Instrument.js"
#include "swirly/util/Dict.js"

Instrument.Instance = function(desc, start, show, multislider) {
    this.state = [];
    var self = this;

    function out = function(channel, value) {
        multislider.message('set', [channel, value]);
        show._dmxoutput(channel + start, value);
    };

    this.update = function(dict, keepExisting) {
        dict = desc.remap(dict || {}, keepExisting);
        Dict.forEach(dict, function send(value, channel) {
            if (self.state[channel] !== value) {
                self.state[channel] = value;
                out(parseInt(channel), value);
            }
        });
    };

    this.update();

    this.setState = function(state) {
        if (this.state !== state) {
            this.state = state;
            this.state.forEach(out);
        }
    };
};
