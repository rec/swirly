#pragma once

function BarSync(func) {
    return function(show) {
        var cueBar = show._time[0];
        return function(time) {
            func(show, time + show._time[0] - cueBar);
        };
    };
};
