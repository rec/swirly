#pragma once

/**

A list of [time, command].

command can be:
  * 0, which means "clear all lights".
  * a dictionary of lighting values.
  * a runnable.

*/

function Sequence(_) {
    var sequence = arguments;
    return function(show, time, context) {
        context.index = context.index || 0;
        context.running = context.running || [];

        for (; context.index < sequence.length; ++context.index) {
            var s = sequence[context.index];
            if (s[0] > time)
                break;
            var command = s[1];
            if (command === 0) {
                show._clearDMX();
            } else if (typeof(command) === 'object') {
                // It's a dictionary of lighting values.
                for (var i in command)
                    show._dmxoutput(parseInt(i), command[i]);
            } else if (typeof(command) == 'function') {
                context.running.push([time, command, {}]);
            } else {
                post('ERROR: don\'t understand sequence ', context.index, '\n');
            }
        }

        for (var i in context.running) {
            var runner = context.running[i],
                offset = runner[0],
                run = runner[1],
                runnerContext = runner[2];
            run(show, time - offset, runnerContext);
        }
    };
};
