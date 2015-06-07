#pragma once

function DMXScene(_) {
    var args = arguments;
    return function(show) {
        for (var i in args) {
            var scene = args[i];
            for (var c in scene)
                show._dmxoutput(parseInt(c), scene[c]);
        }
    };
};
