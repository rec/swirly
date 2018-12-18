#pragma once

#include "swirly/laser/Laser.js"
#include "swirly/object/Dict.js"

Laser.Class = function(max, index, minTime, maxTime) {
    var state = {
        blackout: 0,
        time: 0,
        channelValue: {},
    };

    function timestring(time) {
        var ms = Math.floor(time * 1000)
        return time < 1 ? ms + ' ms' : (ms / 1000) + ' s';
    }

    function setChannelValue(value, channel) {
        state.channelValue[channel] = value;
        max.displays.message(index, 'pipe', channel, value);
    }

    function setBlackout(blackout, allOff) {
        state.blackout = !!blackout;
        var rawOrPipe = allOff ? 'raw' : 'pipe',
            value = blackout ? 0xbf : 0;
        max.displays.message(index, rawOrPipe, Laser.channels.mode, value);
        max.displays.message(index, 'blackout', value);
    }

    function setTime(time) {
        state.time = time;
        max.displays.message(index, 'time', 1000 * time);
        max.displays.message(index, 'timestring', timestring(time));
        max.times.message('set', index + 1, time);
    }

    function reset() {
        setTime(0);
        for (var channel = 0; channel < 9; ++channel)
            setChannelValue(0, channel);
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
                Dict.forEach(v, setChannelValue);
            else
                Logging.log('Did not understand key', k);
        });
    };

    max.displays.message(index, 'channel', 1 + index * 16);
    reset();

    return {
        deserialize: deserialize,
        reset: reset,
        serialize: serialize,
        setBlackout: setBlackout,
        setTime: setTime,
    };
}
