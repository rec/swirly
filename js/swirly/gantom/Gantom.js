#pragma once

var Gantom = {
    // TODO: channels description should start at 1.
    channels: {
        red: 0,
        green: 1,
        blue: 2,
        color_macro: 3,
        speed: 4,
        functions: 5,
        dimmer: 6,
    },

    functions: {
        none: 0,
        fade_in: 32,
        fade_out: 72,
        pulsing: 112,
        smooth_fade: 152,
        rgb_change: 192,
        six_color_change: 232,
        flicker: 251,
    },
};
