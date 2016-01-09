#pragma once

#include "swirly/max/max.js"
#include "swirly/object/ForEach.js"
#include "swirly/util/Error.js"

Max.messagenameOmit = {msg_int: true, msg_float: true, list: true};

Max.setInlets = function(json) {
    if (!Max.newInlets) {
        inlets = json.length;
        json.forEach(function(desc, i) {
            setinletassist(i, desc.name + ': ' + desc.help);
        });
    } else {
        print('Replacing inputs');
    }
    Max.newInlets = json;
};

function anything(_) {
    var args = arrayfromargs(arguments);

    if (!Max.messagenameOmit[messagename])
        args.unshift(messagename);

    Max.inlets[inlet].callback.apply(this, args);
};
