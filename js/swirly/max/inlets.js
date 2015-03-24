#ifndef __SWIRLY_INLETS
#define __SWIRLY_INLETS

#include "swirly/max/max.js"

Max.inlets = {};
Max.scalarMessages = {msg_int: 1, msg_float: 1};
Max.applyEntry = true;

// Name each inlet and set a callback function
// Usage:
//   Max.SetInlets(['inletName', callbackFn, 'help'],
//                 ['nextInletName', callbackFn2, 'more help']);
// If there is no help entry, it defaults to the name of the inlet.
Max.SetInlets = function(_) {
    inlets = arguments.length;
    for (var i = 0; i < arguments.length; ++i) {
        var entry = arguments[i];
        Max.inlets[i] = {name: entry[0], func: entry[1]};
        var help = entry[2] ? (entry[0] + ": " + entry[2]) : entry[0];
        setinletassist(i, help);
    }
    Max.setterInlets = false;
};

Max.ObjectInlets = function(object, names) {
    var results = [];
    var help = object.help || {};
    for (var i = 0; i < names.length; ++i) {
        var name = names[i];
        results.push([name, object[name], help[name] || name]);
    }
    Max.SetInlets.apply(this, results);
};

Max.SetterInlets = function(item) {
    Max.setterItem = item;
    var names = item.names;
    inlets = names.length;
    for (var i = 0; i < names.length; ++i)
        setinletassist(i, names[i]);
}

// Return the name of the current inlet, or the numeric name if you haven't set
// the names.
Max.Inlet = function() {
    return (inlet in Max.inlets) ? Max.inlets[inlet] : inlet;
};

function anything(_) {
    var item = Max.setterItem;
    if (item) {
        var name = item.names[inlet];
        if (arguments.length == 0)
            item[name] = messagename;
        else if (arguments.length == 1 && Max.scalarMessages[messagename])
            item[name] = arguments[0];
        else
            item[name] = arrayfromargs(arguments);

        item.lastUpdated = name;
        item.update();
    } else {
        var entry = Max.inlets[inlet];
        if (entry && entry.func) {
            var args = arrayfromargs(arguments);
            if (!(messagename == 'list' || Max.scalarMessages[messagename]))
                args = [messagename].concat(args);
            if (Max.applyEntry)
                entry.func.apply(this, args);
            else
                entry.func(args);
        } else {
            post("ERROR: Anything didn't understand input for",
                 Max.Inlet(), '\n');
        }
    }
};

#endif  // __SWIRLY_INLETS
