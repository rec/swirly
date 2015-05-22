#pragma once

function Parallel(_) {
    var args = arguments;
    return function(show, time, context) {
        for (var i in args)
            args[i](show, time, context);
    };
};
