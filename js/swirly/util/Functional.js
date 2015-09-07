#pragma once

#include "swirly/util/ForEach.js"

function sequence(functions) {
    return function(_) {
        var args = arguments;
        forEach(functions, function(func) {
            func.apply(this, args);
        });
    };
};
