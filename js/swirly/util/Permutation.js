#pragma once

#include "swirly/util/util.js"

var Permutation = {};

Permutation.checkCycles = function(cycles, length, allowDupes) {
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

Permutation.cycleOverlap = function(cycles) {
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

Permutation.checkPermutation = function(permutation) {
    var alreadySeen = {};
    permutation.forEach(function(element, index) {
        if (element < 0 || element >= permutation.length)
            throw 'Element out of range in invertPermutation: ' + element;

        if (alreadySeen[element])
            throw 'Repeated element in permutation: ' + element;

        alreadySeen[element] = true;
    });
};

Permutation.applyCycle = function(cycle, elements) {
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

Permutation.multiplyCycles = function(cycles, length) {
    var result = Array(length);
    for (var i = 0; i < length; ++i)
        result[i] = i;

    cycles.forEach(function(cycle) {
        Permutation.applyCycle(cycle, elements);
    });

    return result;
};


Permutation.applyPermutation = function(permutation, elements) {
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

Permutation.invertPermutation = function(permutation) {
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

Permutation.permutor = function(cycles, length) {
    Permutation.checkCycles(cycles, length);
    var permutation = Permutation.multiplyCycles(cycles, length);

    return function(show) {
        var instruments = show.instruments;
        if (instruments.length != length)
            throw 'Length ' + instruments.lengths + ' != ' + length;
        var states = Array(length);

        for (var i = 0; i < length; ++i)
            states[i] = instruments[i].state;

        Permutation.applyPermutation(permutation, states);
        for (var i = 0; i < length; ++i)
            instruments[i].setState(state[i]);
    };
};
