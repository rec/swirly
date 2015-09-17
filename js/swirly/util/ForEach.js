#pragma once

#include "swirly/util/Dict.js"

/** Imperfect function to iterate over different types.  If we start extending
 the prototypes of basic classes, this won't work.  */
function forEach(coll, f) {
    if (coll instanceof Array)
        coll.forEach(f);
    else
        Dict.forEach(coll, f);
}

forEachObj = Dict.forEach;

function applyEachArray(coll, f) {
    var result = [];
    coll.forEach(function() {
        result.push(f.apply(this, arguments));
    });
    return result;
}

function applyEachObj(coll, f) {
    var result = {};
    for (var i in coll)
        result[i] = f(coll[i], i, coll);
    return result;
}

function applyEach(coll, f) {
    var iterator = (coll instanceof Array) ? applyEachArray : applyEachObj;
    return iterator(coll, f);
}

function sequenceEach(functions) {
    return function(_) {
        var args = arguments;
        forEach(functions, function(func) {
            func.apply(this, args);
        });
    };
};
