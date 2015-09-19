#pragma once

#include "swirly/util/Dict.js"

function Action(name, value, action) {
    /** Action is either a callable or an Array of functions. */

    var actions = Dict.flatten(action),

        actionFunctions = applyEachArray(actions, function(a) {
            return a.action || a;
        }),

        sequence = Dict.sequence(actionFunctions);

    return {
        name: name,
        value: value,
        action: sequence,
        actions: actions;
    };
};
