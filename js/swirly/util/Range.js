#ifndef __SWIRLY_UTIL_RANGE
#define __SWIRLY_UTIL_RANGE

#include "swirly/util/util.js"

Util.Range = function (begin, end) {
    this.begin = (begin === undefined) ? 0 : begin;
    this.end = (end === undefined) ? 127 : end;
};

Util.Range.prototype.limit = function(x) {
    return Math.floor(Math.min(this.end, Math.max(this.begin, x)));
}

Util.Range.prototype.select = function(ratio) {
    var range = this.end - this.begin + 1;
    var w = range * ratio;
    var x = this.begin + w;
    return this.limit(x);
}

Util.Range.prototype.ratio = function(entry) {
    entry = this.limit(entry);
    return (entry - this.begin) / (this.end - this.begin);
};

#endif  // __SWIRLY_UTIL_RANGE
