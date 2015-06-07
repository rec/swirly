#include "swirly/util/Permutation.js"

Testing.testFunction('Permutation', function() {
    function test(_) {
        var cycles = Permutation.checkCycles(arrayfromargs(arguments));
        Testing.expectEqual(cycles);
    };

    test();
    test(['a']);
    test(['a', 'b']);
    test(['a'], ['b']);

    Testing.expectThrows(Permutation.checkCycles, [[['a', 'b'], ['b']]],
                         'Duplicate entry in all cycles: b');

});
