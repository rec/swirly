#pragma once

var Show = {};

function describe(func, desc, name) {
    func.desc = desc;
    func.name = name;
    if (!name)
        throw 'No name for ' + printable(desc);
    return func;
};
