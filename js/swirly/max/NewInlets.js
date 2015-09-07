#pragma once

#include "swirly/max/max.js"
#include "swirly/util/Error.js"
#include "swirly/util/ForEach.js"

Max.messagenameOmit = {msg_int: true, msg_float: true, list: true};

Max.setInlets = function(json) {
    if (!Max.inlets) {
        // First time.
        inlets = json.length;

        Max.inlets = applyEach(json, function(desc, i) {
            setinletassist(i, desc.name + ': ' + desc.help);
            return {name: desc.name, callback: desc.callback};
        });
    } else {
        // Already created the inlets - hook in the new callbacks.
        forEach(json, function(desc, i) {
            var ilt = Max.inlets[i];

            if (!ilt)
                ERROR('No inlet', i);
            else if (ilt.name !== desc.name)
                ERROR('Inlet out of order', i);
            else
                ilt.callback = desc.callback;
        });
    }
};

function anything(_) {
    var args = arrayfromargs(arguments);

    if (!Max.messagenameOmit[messagename])
        args.unshift(messagename);

    Max.inlets[inlet].callback.apply(this, args);
};
