#pragma once

#include "swirly/util/Dict.js"
#include "swirly/util/Range.js"

var Instrument = {};

Instrument.Description = function(args) {
    if (!args.channels)
        throw 'Instrument.Description: must have a channels argument.';

    var defaults = args.defaults || {},
        names = args.names || {},
        nameToChannel = Util.invertArray(args.channels),
        dmxRange = new Range(0, 255),
        splits = {};

    Dict.forEach(args.splits || {}, function(split, range) {
        splits[split] = {
            range: new Range(range.begin || 0, range.end || 255),
            source: range.source
        };
    });

    this.remap = function(dict, keepExisting) {
        var result = keepExisting ? {} : Dict.Copy(defaults);

        Dict.forEach(dict, function(channel, value) {
            var valueOut = value,
                channelOut = channel;

            if (typeof(valueOut) !== 'number') {
                if (!(channel in names))
                    throw 'Instrument.value: ' + channel + ' accepts no names.';

                valueOut = names[channel][valueOut];
                if (valueOut === undefined)
                    throw ('Instrument.value: Don\'t understand named value ' +
                           value + " for channel " + channel);
            }

            if (channel in splits) {
                var range = splits[channel];
                channelOut = range.source;
                valueOut = range.range.select(dmxRange.ratio(value));
            }

            if (!dmxRange.contains(valueOut))
                throw 'Value "' + value + '" out of range: channel=' + channel;

            channelOut = nameToChannel[channelOut];
            if (channelOut === undefined)
                throw 'Don\'t understand channel ' + channel;

            result[channelOut] = valueOut;
        });

        return result;
   };
};

Instrument.Instrument = function(desc, start, show, multislider) {
    this.state = [];
    var self = this;

    function out = function(channel, value) {
        multislider.message('set', [channel, value]);
        show._dmxoutput(channel + start, value);
    };

    this.update = function(dict, keepExisting) {
        dict = desc.remap(dict || {}, keepExisting);
        Dict.forEach(dict, function send(channel, value) {
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

Instrument.checkCycles = function(cycles, length, allowDupes) {
    var dupes = {};
    cycles.forEach(function(cycle) {
        var innerDupes = {};
        cycle.forEach(function(c) {
            if (c < 0 || (length && c >= length))
                throw 'Cycle entry ' + element + ' out of range ' + length;
            if (!allowDupes) {
                if (c in dupes)
                    throw 'Duplicate entry in all cycles: ' + c;
                dupes[c] = true;
            }
            if (c in innerDupes)
                throw 'Duplicate entry in this cycle: ' + c;
        });
    });
};

Instrument.cycleOverlap = function(cycles) {
    var seenOnce = {}, seenTwice = {};
    cycles.forEach(function(cycle) {
        cycle.forEach(function(element) {
            if (seenOnce[element])
                seenTwice[element] = true;
            else
                seenOnce[element] = true;
        });
        return seenTwice.keys();
    });
};

Instrument.checkPermutation = function(permutation) {
    var alreadySeen = {};
    permutation.forEach(function(element, index) {
        if (element < 0 || element >= permutation.length)
            throw 'Element out of range in invertPermutation: ' + element;

        if (alreadySeen[element])
            throw 'Repeated element in permutation: ' + element;

        alreadySeen[element] = true;
    });
};

Instrument.applyCycle = function(cycle, elements) {
    if (cycle.length < 2)
        return;

    var first, next;
    cycle.forEach(function(element) {
        var existing = elements[element];
        if (next === undefined)
            first = element;
        else
            elements[element] = next;
        next = existing;
    });

    existing[first] = next;
};

Instrument.multiplyCycles = function(cycles, length) {
    var result = Array(length);
    for (var i = 0; i < length; ++i)
        result[i] = i;

    cycles.forEach(function(cycle) {
        Instrument.applyCycle(cycle, elements);
    });

    return result;
};


Instrument.applyPermutation = function(permutation, elements) {
    if (permutation.length != elements.length)
        throw 'Permutation length must equal element length';

    var result = elements.slice();
    permutation.forEach(function(element, index) {
        if (element < 0 || element >= permutation.length)
            throw 'Element out of range in applyPermutation: ' + element;
        result[element] = elements[index];
    });

    return result;
};

Instrument.invertPermutation = function(permutation) {
    var result = Array(permutation.length);
    permutation.forEach(function(element, index) {
        if (element < 0 || element >= permutation.length)
            throw 'Element out of range in invertPermutation: ' + element;

        if (result[element] !== undefined)
            throw 'Repeated element in permutation: ' + element;

        result[element] = index;
    });
    return result;
};

Instrument.permutor = function(cycles, length) {
    Instrument.checkCycles(cycles, length);
    var permutation = Instrument.multiplyCycles(cycles, length);

    return function(show) {
        var instruments = show.instruments;
        if (instruments.length != length)
            throw 'Length ' + instruments.lengths + ' != ' + length;
        var states = Array(length);

        for (var i = 0; i < length; ++i)
            states[i] = instruments[i].state;

        Instrument.applyPermutation(permutation, states);
        for (var i = 0; i < length; ++i)
            instruments[i].setState(state[i]);
    };
};
