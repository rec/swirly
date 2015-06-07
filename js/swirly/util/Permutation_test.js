#include "swirly/util/Permutation.js"

Testing.testFunction('Permutation.checkCycles', function() {
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

Testing.testFunction('Permutation.checkPermutation', function() {
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
