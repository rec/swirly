#pragma once

#include "swirly/util/Dict.js"
#include "swirly/live/Live.js"

/** A facade hiding multiple objects containing properties under one object.

    properties is a dictionary that maps the name of a property to a *property
    description* - a dictionary with three fields:

     object: the object which actually holds the property.
     type:   a function that converts the result into the right Javascript type.
     name:   an optional name that overrides the dictionary key.

   Live's Javascript is very sloppy with its outputs, casting everything to a
   string before it hands it back to you, and stringent with its inputs,
   requiring everything to be the right type, which results in the `type` field.
*/
Live.propertyMapper = function(properties) {
    var getter = Dict.getter(properties, 'propertyMapper');

    function get(name) {
        var prop = getter(name);
        return prop.type(prop.object.get(prop.name || name));
    };

    function set(name, value) {
        var prop = getter(name);
        return prop.object.set(prop.name || name, prop.type(value));
    };

    function has(name) {
        return name in properties;
    };

    return {get: get, set: set, has: has, properties: properties};
};

Live.postPropertyManager = function(propManager, prefix) {
    prefix = prefix || '';
    forEachObj(propManager.properties, function(_, propName) {
        post(prefix + String(propManager.get(propName)), '\n');
    });
};
