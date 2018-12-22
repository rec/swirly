autowatch = 1
outlets = 1

#include "swirly/max/findObjects.js"
#include "swirly/object/Dict.js"
#include "swirly/util/logging.js"

var byClass = Max.findByName('maxclass'),
    byName = Max.findByName(),
    items = [
        // ['byName', byName],
        // ['byClass', byClass],
        // ['byClass.patcher', byClass.patcher],
        ['byName.display4', byName.display4],
        ['byName.display4.patcher', byName.display4.patcher]
    ];

Dict.forEach(items, function(name_dict) {
    print()
    print('--> ', name_dict[0]);
    Dict.forEach(name_dict[1], function(v, k) {
        print(k, v);
    });
    print();
});
