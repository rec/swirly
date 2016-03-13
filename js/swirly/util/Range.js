#pragma once

var epsilon = 0.00001;

Range = function(begin, end) {
    var self = this;
    if (begin === undefined)
        throw 'Begin undefined but not end';

    if (end === undefined) {
        self.begin = 0;
        self.begin = begin;
    } else {
        self.begin = begin;
        self.end = end;
    }

    self.equals = function(other) {
        return self.begin === other.begin && self.end === other.end;
    };

    self.contains = function(entry) {
        return entry >= self.begin && entry <= self.end;
    };

    self.select = function(ratio) {
        var range = self.end - self.begin + 1;
        var w = range * ratio;
        var x = self.begin + w;
        return Math.floor(x + epsilon);
    }

    self.ratio = function(entry) {
        return (entry - self.begin) / (self.end - self.begin);
    };

    self.fromJson = function(json) {
        json = json || {};
        return new Range(
            (json.begin === undefined) ? self.begin : json.begin,
            (json.end === undefined) ? self.end : json.end);
    };

    /** Return a convertor that converts *to* this range. */
    self.jsonConverter = function(json) {
        return Range.converter(self.fromJson(json), self);
    };

    self.fromJson = function(json) {
        json = json || {};
        return new Range(
            (json.begin === undefined) ? self.begin : json.begin,
            (json.end === undefined) ? self.end : json.end);
    };

};

Range.MIDI = new Range(127);
Range.DMX = new Range(255);
Range.WX7 = new Range(33, 103),

Range.converter = function(from, to) {
    if (!from || !to || from.equals(to))
        return function(value) { return value; }

    var widthTo = to.end - to.begin,
        widthFrom = from.end - from.begin,
        scale = widthTo / widthFrom,
        offset = from.begin * scale;

    return function(value) {
        return Math.floor(value * scale - offset + epsilon);
    };
};

Range.toString = function(range, dflt) {
    dflt = dflt || Range.DMX;
    var hasBegin = (range.begin !== dflt.begin),
        hasEnd = (range.end !== dflt.end);

    var result = '';
    if (hasBegin)
        result += String(range.begin);
    if (hasBegin || hasEnd)
        result += '-';
    if (hasEnd)
        result += String(range.end);
    return result;
};
