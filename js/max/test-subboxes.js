autowatch = 1
outlets = 1

#include "swirly/max/findObjects.js"
#include "swirly/object/Dicti.js"
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

Dicti.forEach(items, function(name_dict) {
    print()
    print('--> ', name_dict[0]);
    Dicti.forEach(name_dict[1], function(v, k) {
        print(k, v);
    });
    print();
});
