#pragma once

#include "swirly/max/max.js"
#include "swirly/util/ForEach.js"

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
        var help = entry[2] ? (entry[0] + ': ' + entry[2]) : entry[0];
        setinletassist(i, help);
    }
};

/** New-style, with objects! */
Max.setInletsJson = function(json) {
    inlets = json.length;
    forEach(json, function(desc, i) {
        Max.inlets[i] = {name: desc.name, func: desc.delegate};
        var help = desc.name;
        if (desc.help)
            help += ': ' + desc.help;
        setinletassist(i, help);
    });
};

Max.ObjectInlets = function(object, names, methods) {
    var results = [];

    methods = methods || object._methods;
    if (methods) {
        for (var i in methods) {
            var method = methods[i],
                name = method[0],
                help = method[1] || name,
                func = method[2] || object[name];
            if (!func)
                print('ERROR! no function for', name);
            results.push([name, func, help]);
        }
    } else {
        names = names || object.names;
        for (var i = 0; i < names.length; ++i)
            results.push([names[i], object[names[i]], names[i]]);
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
            print('ERROR: anything didn\'t understand input for', inlet,
                  Max.Inlet());
        }
    }
};
