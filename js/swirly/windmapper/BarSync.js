#pragma once

function BarSync(func) {
    return function(show) {
        var cueBar = show._time[0];
        var scratch = {};
        function run(time) {
            func(show, time + show._time[0] - cueBar, scratch);
        };
        return {'phasor': run};
    };
};
