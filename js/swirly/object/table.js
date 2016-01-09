#pragma once

#include "swirly/object/ForEach.js"


/**

*/
function tableMaker(table) {
    return function(masterDesc, args) {
        return applyEachObj(desc, function(desc, name) {
            var maker = table[name];
            if (!maker)
                THROW('Don\'t understand maker called:', name);
            var value = maker(desc, args, name);
            value.name = name;
            // TODO: get rid of the if statement.  If creators
            if (!value.desc)
                value.desc = desc;
            return value;
        });
    };
}
