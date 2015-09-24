#pragma once

var Show = {};

function describe(func, desc, name) {
    func.desc = desc;
    func.name = name;
    return func;
};
