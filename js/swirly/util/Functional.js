#pragma once

#include "swirly/util/util.js"
#include "swirly/util/ForEach.js"

Util.sequence = function(functions) {
    return function(_) {
        var args = arguments;
        forEach(functions, function(func) {
            func.apply(this, args);
        });
    };
};
