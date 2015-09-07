#ifndef __SWIRLY_UTIL_RANGE
#define __SWIRLY_UTIL_RANGE

#include "swirly/util/util.js"

Range = function(begin, end) {
    var self = this;
    if (begin === undefined)
        throw "Begin undefined but not end";

    if (end === undefined) {
        self.begin = 0;
        self.begin = begin;
    } else {
        self.begin = begin;
        self.end = end;
    }

    self.contains = function(entry) {
        return entry >= self.begin && entry <= self.end;
    };

    self.limit = function(x) {
        return Math.floor(Math.min(self.end, Math.max(self.begin, x)));
    }

    self.select = function(ratio) {
        var range = self.end - self.begin + 1;
        var w = range * ratio;
        var x = self.begin + w;
        return self.limit(x);
    }

    self.ratio = function(entry) {
        entry = self.limit(entry);
        return (entry - self.begin) / (self.end - self.begin);
    };


    self.fromJson = function(json) {
        json = json || {};
        return new Range(
            (json.begin === undefined) ? self.begin : json.begin,
            (json.end === undefined) ? self.end : json.end);
    };

    self.toRatio = function(json) {
        return self.fromJson(json).ratio;
    };

    self.fromRatio = function(json) {
        return self.fromJson(json).select;
    };
};

Range.MIDI = new Range(127);
Range.DMX = new Range(255);
Range.WX7 = new Range(33, 103),

#endif  // __SWIRLY_UTIL_RANGE
