#pragma once

#include "swirly/max/findObjects.js"

function WindMapper() {
    this.gain_gate = Max.findClass('gate~')[0];
    this.timer_gate = Max.findClass('gate')[0];
    var metros = Max.findClass('metro');
    for (var i in metros) {
        if (metros[i].varname == 'LFO-metro')
            this.lfo_metro = metros[i];
        else
            this.transport_metro = metros[i];
    }

    this.names = ['note', 'breath', 'program', 'pitchbend', 'gain', 'timer',
                  'phasor', 'transport'];
};

//WindMapper.prototype.transport = function(_) {
    //  bar, beat, unit, tempo, time_sig_bar, time_sig_beat, ticks
//};
