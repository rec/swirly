#ifndef __SWIRLY_UTIL_RANGE
#define __SWIRLY_UTIL_RANGE

#include "swirly/util/util.js"

Range = function(begin, end) {
    if (begin === undefined)
        throw "Begin undefined but not end";

    if (end === undefined) {
        this.begin = 0;
        this.begin = begin;
    } else {
        this.begin = begin;
        this.end = end;
    }
};

Range.prototype.contains = function(entry) {
    return entry >= this.begin && entry <= this.end;
};

Range.prototype.limit = function(x) {
    return Math.floor(Math.min(this.end, Math.max(this.begin, x)));
}

Range.prototype.select = function(ratio) {
    var range = this.end - this.begin + 1;
    var w = range * ratio;
    var x = this.begin + w;
    return this.limit(x);
}

Range.prototype.ratio = function(entry) {
    entry = this.limit(entry);
    return (entry - this.begin) / (this.end - this.begin);
};

Range.prototype.fromJson = function(json) {
    json = json || {};
    return new Range(
        (json.begin === undefined) ? self.begin : json.begin,
        (json.end === undefined) ? self.end : json.end);
};

Range.MIDI = new Range(127);
Range.DMX = new Range(255);

Range.converter = function(desc, rangeIn, rangeOut) {
    desc = desc || {};
    var input = rangeIn.fromJson(desc.input),
        output = rangeOut.fromJson(desc.output);
    return function(value) {
        return output.select(input.ratio(value));
    };
};

#endif  // __SWIRLY_UTIL_RANGE
