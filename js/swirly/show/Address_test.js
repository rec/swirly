#include "swirly/show/Address.js"

Testing.testFunction('Show.splitAddress', function() {
    var split = Show.splitAddress;
    Testing.expectEqual(split(''), []);
    Testing.expectEqual(split('a.b'), ['a', 'b']);
    Testing.expectEqual(split('foo'), ['foo']);
    Testing.expectEqual(split('foo.bar'), ['foo', 'bar']);
    Testing.expectEqual(split('foo[2].bar'), ['foo', '2', 'bar']);

    Testing.expectThrows(split, ['foo]'], 'Malformed address foo]: Extra [');
    Testing.expectThrows(split, ['.'],
                         'Malformed address .: Empty address component');
    Testing.expectThrows(split, ['a.'],
                         'Malformed address a.: Empty address component');
    Testing.expectThrows(split, ['a..b'],
                         'Malformed address a..b: Empty address component');
    Testing.expectThrows(split, ['a.[2].b'],
                         'Malformed address a.[2].b: indexing empty string');
    Testing.expectThrows(split, ['a.b[].b'],
                         'Malformed address a.b[].b: indexed by empty string');
});
