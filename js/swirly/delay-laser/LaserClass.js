#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/object/Dict.js"

Laser.Class = function(display, times, index, minTime, maxTime) {
    var state = {
        blackout: 0,
        time: 0,
        channelValue: {},
    };

    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    }

    function setChannelValue(channel, value) {
        state.channelValue[channel] = value;
        display.message('pipe', channel, value);
    }

    function setBlackout(blackout, allOff) {
        state.blackout = !!blackout;
        var rawOrPipe = allOff ? 'raw' : 'pipe',
            value = blackout ? 0xbf : 0;
        display.message(rawOrPipe, Laser.channels.mode, value);
        display.message('blackout', value);
    }

    function setTime(time) {
        state.time = time;
        display.message('time', 1000 * time);
        display.message('timestring', timestring(time));
        times.message('set', index + 1, time);
    }

    function reset() {
        setTime(0);
        for (var channel = 0; channel < 9; ++channel)
            setChannelValue(channel, 0);
        setBlackout(0);
    }

    function serialize() {
        return {
            blackout: state.blackout,
            time: state.time,
            channelValue: Dict.Copy(state.channelValue),
        };
    }

    function deserialize(newState) {
        Dict.forEach(newState, function(v, k) {
            if (k == 'blackout')
                setBlackout(v);
             else if (k == 'time')
                setTime(v);
            else if (k == 'channelValue')
                Dict.forEach(v, function(v, k) { setChannelValue(k, v); });
            else
                Logging.log('Did not understand key', k);
        });
    }

    function setDisplay(d) {
        display = d;
    }

    display.message('channel', 1 + index * 16);
    reset();

    return {
        deserialize: deserialize,
        reset: reset,
        serialize: serialize,
        setBlackout: setBlackout,
        setChannelValue: setChannelValue,
        setDisplay: setDisplay,
        setTime: setTime,
    };
}
