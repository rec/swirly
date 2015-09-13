#pragma once

#include "swirly/max/max.js"
#include "swirly/util/Error.js"
#include "swirly/util/ForEach.js"

Max.messagenameOmit = {msg_int: true, msg_float: true, list: true};

Max.setInlets = function(json) {
    if (!Max.newInlets) {
        inlets = json.length;
        forEach(json, function(desc, i) {
            setinletassist(i, desc.name + ': ' + desc.help);
        });
    } else {
        post('Replacing inputs\n');
    }
    Max.newInlets = json;
};

function anything(_) {
    var args = arrayfromargs(arguments);

    if (!Max.messagenameOmit[messagename])
        args.unshift(messagename);

    Max.inlets[inlet].callback.apply(this, args);
};
