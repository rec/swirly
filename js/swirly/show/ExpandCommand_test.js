#include "swirly/show/ExpandCommand.js"
#include "swirly/util/ForEach.js"

Testing.testFunction('Show.splitPrefix', function() {
    var split = Show.splitPrefix;
    Testing.expectEqual(split(''), {name:''});
    Testing.expectEqual(split('*'), {name:'*'});
    Testing.expectEqual(split('**'), {name:'*'});
    Testing.expectEqual(split('*a'), {name: 'a', prefix:'*'});
    Testing.expectEqual(split('*abc'), {name: 'abc', prefix:'*'});
    Testing.expectEqual(split('**a'), {name: '*a'});
});

Testing.testFunction('Show.expandCommand', function() {
    function mock(name) {
        return function(_) {
            return [name + '_mock'].concat(arrayfromargs(arguments));
        };
    };
    var commandDict = {
        scene: mock('scene'),
        doSomething: mock('doSomething')
    };
    function expand(s) {
        return Show.expandCommand(s, commandDict);
    };
    var scalars = [false, true, 0, 1, null, 'hello', ''];
    forEach(scalars, function(s) {
        Testing.expectEqual(expand(s), s);
    });

    Testing.expectEqual(expand('*doSomething'), ['doSomething_mock']);
    Testing.expectEqual(expand(['*doSomething']), ['doSomething_mock']);
    Testing.expectEqual(expand(['*doSomething', 1, 2, 3]),
                        ['doSomething_mock', 1, 2, 3]);
    Testing.expectEqual(expand('$foo.bar.baz'),
                        ['scene_mock', 'foo', 'bar', 'baz']);

    Testing.expectEqual(expand(['$foo.bar.baz', 1, 2, 3]),
                        [['scene_mock', 'foo', 'bar', 'baz'], 1, 2, 3]);

    Testing.expectEqual(expand({foo:{bar:'baz'}, bang: true}),
                        {foo:{bar:'baz'}, bang: true});
});

Testing.testFunction('Show.readCommands', function() {
    function mock(name) {
        return function(_) {
            return [name + '_mock'].concat(arrayfromargs(arguments));
        };
    };
    var commandDict = {
        scene: mock('scene'),
        doSomething: mock('doSomething')
    };

    Testing.expectThrows(Show.readCommands, ['non-existent.json', commandDict],
                         'Error at js/swirly/util/FileReader.js:46:Couldn\'t ' +
                         'open file "non-existent.json"');

    var commands = Show.readCommands('ExpandCommand.json', commandDict);
    Testing.expectEqual(commands,
                        {"a": ["doSomething_mock"],
                         "b": [1, 2, ["doSomething_mock", false, true]],
                         "c": ["scene_mock", "foo", "bar", "baz"]});
});
