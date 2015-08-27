#pragma once

function assert(cond, message) {
    if (!cond)
        throw message || ("Assertion failed: " + String(cond));
};
