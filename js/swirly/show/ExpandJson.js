#pragma once

#include "swirly/show/Address.js"
#include "swirly/util/ForEach.js"
#include "swirly/util/FileReader.js"

Show.prefix = '$';

Show.expandJson = function(json, execute) {
    function expand(json) {
        if (json instanceof Array) {
            var first = json[0];
            if (typeof(first) === 'string' && first.startswith(Show.prefix))
                return execute[first.slice(1)](json.slice(1));
        }

        if (json instanceof Object)
            return applyEach(json, expand);

        return json;
    }

    return expand(json);
};

Show.readJson = function(filename, args) {
    return Show.expandJson(args.read(filename), args);
};
