#pragma once

var Show = {};

function describe(func, desc) {
    func.desc = desc;
    return func;
}

function named(f, name) {
    f.name = name;
    return f;
}
