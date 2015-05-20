#pragma once

function DMXScene(scene) {
    return function(show) {
        for (var c in scene)
            show._dmxoutput(parseInt(c), scene[c];
    };
};
