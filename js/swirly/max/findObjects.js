#ifndef __FINDOBJECTS
#define __FINDOBJECTS

#include "swirly/max/max.js"

Max.foreach = function(f) {
    for (var i = Max.patcher.firstobject; i; i = i.nextobject)
        f(i);
};

Max.findObjects = function(name, value) {
    var result = [];
    Max.foreach(function(i) { if (i[name] == value) result.push(i); });
    return result;
};

Max.findName = function(name) {
  return Max.findObjects('varname', name);
};

Max.findSubpatcher = function(name) {
  return Max.findName(name, container)[0].subpatcher();
};

Max.findClass = function(name) {
    return Max.findObjects('maxclass', name);
};

Max.findAllObjects = function(name, unique) {
    var result = {};
    Max.foreach(function(max_object) {
        var value = max_object[name];
        if (value !== undefined && value != '') {
            if (value in result) {
                var instances = result[value];
                if (unique) {
                    print('ERROR: duplicate value for :' +
                          name + ':' + value + ':');
                } else {
                    instances.push(max_object);
                }
            } else {
                result[value] = unique ? max_object : [max_object];
            }
        }
    });
    return result;
};

Max.findFirstObject = function(name) {
    var result = {};
    Max.foreach(function(max_object) {
        var value = max_object[name];
        if (value !== undefined && value != '')
            result[value] = max_object;
    });
    return result;
};

Max.setValues = function(obj, dict) {
    for (var name in dict) {
        var value = dict[name];
        try {
            obj[name](value);
        } catch (e) {
            obj[name] = value;
        }
    }
};

Max.findAll = function() {
    var byClass = Max.findFirstObject('maxclass'),
        byName = Max.findFirstObject('varname');

    function create(type, name, args) {
        var obj = byName[name];
        if (!obj) {
            obj = Max.patcher.newdefault(0, 0, type);
            obj.varname = name;
            byName[name] = obj;
        }
        Max.setValues(obj, args);
        return obj;
    }

    function createall(count, type, name, args) {
        var results = [];
        for (var i = 0; i < count; ++i)
            results.push(create(type, name + i, args));
        return results;
    }

    return {byClass: byClass, byName: byName,
            create: create, createall: createall};
};

#endif  // __FINDOBJECTS
