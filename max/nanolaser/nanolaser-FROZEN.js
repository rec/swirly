autowatch = 1;
outlets = 0;






var MAX_DEPTH = 10;

function Print(item, depth) {
  depth = depth || 0;
  if (depth > MAX_DEPTH)
    return 'MAX_DEPTH';

  if (item == null)
    return 'null';

  if (item == 'undefined')
    return 'undefined';

  var t = typeof(item);
  if (t == 'string')
    return '"' + item + '"';

  if (t == 'function')
    return (item.name || 'unknown') + '()';

  if (t != 'object')
    return item + '';

  var is_array = item instanceof Array;
  var result = [is_array ? '[' : '{'];

  for (var index in item) {
    if (result.length > 1)
      result[result.length - 1] += ', ';
    var value = Print(item[index], depth + 1);
    result.push(is_array ? value : '"' + index + '": ' + value);
  }
  result.push(is_array ? ']' : '}');
  return result.join('');
}

function PrintJoin(_) {
  var res = [];
  for (var i = 0; i < arguments.length; ++i)
    res.push(Print(arguments[i]));
  return res.join(' ');
}

// This is a VERY useful function - it converts Javascript objects into a
// human-readable form, prints them on one line and then adds a trailing \n.
function Postln(_) {
  for (var i = 0; i < arguments.length; ++i)
    post(Print(arguments[i]));

  post('\n');
}

function print(_) {
    if (arguments.length) {
        for (var i = 0; i < arguments.length; ++i)
            post(arguments[i]);
    } else {
        post(' ');
    }
    post();
}

function printable(x) {
    if (x === null)
        return '<null>';

    if (x === undefined)
        return '<undefined>';

    if (typeof(x) == 'object')
        return JSON.stringify(x);

    return String(x);
}

function maxLog(_) {
    for (var i = 0; i < arguments.length; i++)
        post(printable(arguments[i]));
}

var Logging = {};

Logging.setLogging = function(on) {
  Logging.Log = on ? Postln : function() {};
};

Logging.setLogging(false);

Logging.setLogging(!true);










var Laser = {
    channels: {
        mode: 0,
        pattern: 1,
        zoom: 2,
        xrot: 3,
        yrot: 4,
        zrot: 5,
        hpos: 6,
        vpos: 7,
        color: 8,
    },

    color: {
        all: 0,
        red: 64,
        green: 96,
        blue: 128,
        yellow: 160,
        pink: 192,
        cyan: 224
    },

    pattern: {
        circle: 0,
        spike_circle: 8,
        triangle: 16,
        square: 24,
        spike_square: 32,
        square_in_square: 40,
        maltese_cross: 48,
        star: 56,
        ell: 64,
        hourglass: 72,
        spiral: 80,
        cees: 88,
        logarithmic: 96,
        two_quarter_circle: 104,
        specs: 112,
        wave: 120,
        vee: 128,
        em: 136,
        saw: 144,
        line: 152,
        three_lines: 160,
        joined_line: 168,
        parallel_lines: 176,
        x: 184,
        skew: 192,
        four_lines: 200,
        two_squares: 208,
        four_squares: 216,
        one_intense_square: 224,
        dotted_line: 232,
        dotted_semicircle: 240,
        random_dots: 248
    }
};

Laser.Lights = function(multislider, dmx, channelOffset) {
    var self = this,
        faders = new Array(9);

    function sendMultislider() {
        Logging.Log('multislider', faders);
        multislider.message(faders);
    };

    function setFader(fader, value) {
        faders[fader] = value;
        dmx.message(1 + channelOffset + fader, value);
        Logging.Log('dmx', channelOffset + fader, value, '\n');
    };

    function clear() {
        for (var i = 1; i < faders.length; ++i)
            setFader(i, 0);
        setFader(0, 0xFF);

        sendMultislider();
    };


    self.setFader = function(fader, value) {
        setFader(fader, value);
        sendMultislider();
    };

    clear();
    self.clear = clear;
    Logging.Log('multislider', channelOffset, faders, faders.length);
};

Laser.Bank = function(multisliders, dmx, baseChannel, bankSize) {
    baseChannel = baseChannel || 0;
    bankSize = bankSize || 16;
    var instruments = [],
        self = this;
    for (var i in multisliders) {
        var offset = baseChannel + i * bankSize;
        instruments.push(new Laser.Lights(multisliders[i], dmx, offset));
    }

    self.setEnabled = function(index, enabled) {
        Logging.Log('setEnabled', index, enabled);
        instruments[index].enabled = enabled;
    };

    self.setBlackout = function(index, blackout) {
        Logging.Log('setBlackout', index, blackout);
        instruments[index].setFader(Laser.channels.mode, blackout ? 0 : 0xFF);
    };

    self.setFader = function(fader, value) {
        instruments.forEach(function(instrument) {
            if (instrument.enabled)
                instrument.setFader(fader, value);
        });
    };
};






var Max = new Object();
Max.patcher = this.patcher;

Max.foreach = function(f) {
    for (var i = Max.patcher.firstobject; i; i = i.nextobject)
        f(i);
};

Max.findObjects = function(name, value) {
    var result = [];
    Max.foreach(function(i) { if (i[name] == value) result.push(i); });
    return result;
};

Max.findName = function(name) {
  return Max.findObjects('varname', name);
};

Max.findSubpatcher = function(name) {
  return Max.findName(name, container)[0].subpatcher();
};

Max.findClass = function(name) {
    return Max.findObjects('maxclass', name);
};

Max.findAllObjects = function(name, unique) {
    var result = {};
    Max.foreach(function(max_object) {
        var value = max_object[name];
        if (value !== undefined && value != '') {
            if (value in result) {
                var instances = result[value];
                if (unique) {
                    print('ERROR: duplicate value for :' +
                          name + ':' + value + ':');
                } else {
                    instances.push(max_object);
                }
            } else {
                result[value] = unique ? max_object : [max_object];
            }
        }
    });
    return result;
};

Max.findFirstObject = function(name) {
    var result = {};
    Max.foreach(function(max_object) {
        var value = max_object[name];
        if (value !== undefined && value != '')
            result[value] = max_object;
    });
    return result;
};

Max.findAll = function() {
    return {
        'byClass': Max.findFirstObject('maxclass'),
        'byName': Max.findFirstObject('varname'),
    };
};


Laser.Nano = function() {
    var BANK_SIZE = 8,
        COLOR_OFFSET = 62,
        PATTERN_OFFSET = 10, // conservative guess.
        dmx = Max.findClass('dmxusbpro')[0],
        midiin = Max.findClass('midiin')[0],
        playMode = false,
        flashMode = false;

    dmx.message('/dev/cu.usbserial-6AYL2V8Z');
    midiin.message('nanoKONTROL SLIDER/KNOB');

    var multisliders = [];
    for (var i = 0; i < BANK_SIZE; ++i)
        multisliders.push(Max.findName('multislider[' + (i + 1) + ']')[0]);
    var bank = new Laser.Bank(multisliders, dmx);

    function subrange(name, begin, end) {
        var fader = Laser.channels[name];
        if (fader === undefined) {
            post('ERROR: Didn\'t understand channel name', name);
            return
        }

        var rangeRatio = (end - begin + 1) / 128;
        return function(value) {
            var scaled = begin + Math.floor((1 + value) * rangeRatio) - 1;
            bank.setFader(fader, scaled);
        };
    };

    function enable(index) {
        return function(value) {
            bank.setEnabled(index, value != 0);
        };
    };

    function sendBlackouts() {
        for (var i = 0; i < BANK_SIZE; ++i)
            bank.setBlackout(i, playMode === flashMode);
    };

    function play(value) {
        playMode = (value != 0);
        sendBlackouts();
    };

    function flash(value) {
        flashMode = (value != 0);
        sendBlackouts();
    }

    var commands = {
         0: subrange('color', COLOR_OFFSET, 255 - COLOR_OFFSET),
         1: subrange('pattern', PATTERN_OFFSET, 255 - PATTERN_OFFSET),
         2: subrange('zoom', 0, 127),
         3: subrange('xrot', 0, 127),
         4: subrange('yrot', 0, 127),
         5: subrange('zrot', 0, 127),
         6: subrange('hpos', 0, 127),
         7: subrange('vpos', 0, 127),

        12: subrange('zoom', 128, 255),
        13: subrange('xrot', 128, 255),
        14: subrange('yrot', 128, 255),
        15: subrange('zrot', 128, 255),
        16: subrange('hpos', 128, 255),
        17: subrange('vpos', 128, 255),

        20: enable(0),
        21: enable(1),
        22: enable(2),
        23: enable(3),
        24: enable(4),
        25: enable(5),
        26: enable(6),
        27: enable(7),

        41: play,
        44: flash,
    };

    this.receiveController = function(c, v) {
        var command = commands[c];
        if (command)
            command(v);
        else
            post('ERROR: don\'t understand controller ' + c + ': ' + v);
    };
};










var Util = {};

Dict = {};

Dict.Setter = function(dict) {
    return function(key, value) {
        dict[key] = value;
    };
};

Dict.GetOrAddDefault = function(table, key, value) {
  if (key in table)
    value = table[key];
  else
    table[key] = value;

  return value;
};

Dict.Copy = function(dict) {
  return Dict.CopyTo(dict, {});
};

Dict.CopyTo = function(from, to) {
  for (var name in from)
    to[name] = from[name];
  return to;
};

Dict.values = function(dict) {
    var results = [];
    for (var i in dict)
        results.push(dict[i]);
    return results;
};

Dict.GetCommandFromMap = function(map, input) {
  if (!input || !input.length) {
    print('ERROR: Empty input', Print(input));
    return;
  }

  for (var i = 0; ; ++i) {
    if (!map) {
      print('ERROR: Didn\'t understand input', Print(input));
      return;
    }

      if (isString(map))
      return {command: map, data: input.slice(i + 1)};

    if (i >= input.length) {
      print('ERROR: Ran out during input', Print(input));
      return;
    }

    map = map[input[i]] || map['*'];
  }
};

Dict.remap = function(map, assignments) {
    var result = {};
    for (var a in assignments)
        result[map[a]] = assignments[a];
    return result;
};

Dict.update = function(to, from) {
    for (var i in from)
        to[i] = from[i];
};

Dict.offset = function(offset, dict) {
    var result = {};
    for (var i in dict)
        result[i] = dict[i] + offset;
    return result;
};

Dict.union = function(_) {
    var result = {};
    for (var i in arguments)
        Dict.update(result, arguments[i]);
    return result;
};

Dict.invert = function(array) {
    var result = {};
    forEach(array, function(value, index) {
        if (value in result)
            throw 'Dict.invert: Duplicate value ' + v;
        result[value] = index;
    });
    return result;
};

Dict.oneach = function(dict, f) {
    for (var k in dict)
        dict[k] = f(dict[k], k);
};


Dict.forEach = function(dict, f) {
    for (var k in dict)
        f(dict[k], k);
};

/** Get a value from a dictionary, or throw an exception. */
Dict.get = function(dict, key, errorName) {
    var result = dict[key];
    if (result !== undefined)
        return result;
    throw 'Couldn\'t find key ' + key + ' in dictionary ' + (errorName || '');
};

/** Return a function that gets a value from a dictionary, or throws an
    exception. */
Dict.getter = function(dict, errorName) {
    return function(key) {
        return Dict.get(dict, key, errorName);
    };
};

Dict.keyGetter = function(key, errorName) {
    return function(dict) {
        return Dict.get(dict, key, errorName || key);
    };
};

Dict.concat = function(args) {
    return args.reduce(function(p, c) { return p + c; }, []);
};

Dict.sequence = function(functions) {
    return function() {
        functions.forEach(function(f) { f(); });
    };
};

/** Flatten an array of arrays and promote scalars to arrays.
    The result is a flat list of non-lists. */
Dict.flatten = function(args) {
    if (!(args instanceof Array))
        return [args];
    var result = [];
    args.forEach(function(a) {
        result = result.concat(Dict.flatten(a));
    });
    return result;
};

Dict.duplicateValue = function(n, value) {
    var result = [];
    for (var i = 0; i < n; ++i)
        result.push(value);
    return result;
};

/** Imperfect function to iterate over different types.  If we start extending
 the prototypes of basic classes, this won't work.  */
function forEach(coll, f) {
    if (coll instanceof Array)
        coll.forEach(f);
    else
        Dict.forEach(coll, f);
}

var forEachObj = Dict.forEach;

function forEachSorted(coll, f) {
    var keys = Object.keys(coll);
    keys.sort();
    keys.forEach(function(key) {
        f(coll[key], key);
    });
};

function applyEachArray(coll, f) {
    var result = [];
    coll.forEach(function() {
        result.push(f.apply(this, arguments));
    });
    return result;
}

function applyEachObj(coll, f) {
    var result = {};
    for (var i in coll)
        result[i] = f(coll[i], i, coll);
    return result;
}

function appendEachObj(coll, f) {
    var result = [];
    for (var i in coll)
        result.push(f(coll[i], i, coll));
    return result;
}

function applyEach(coll, f) {
    var iterator = (coll instanceof Array) ? applyEachArray : applyEachObj;
    return iterator(coll, f);
}

function sequenceEach(functions) {
    return function(_) {
        var args = arguments;
        forEach(functions, function(func) {
            func.apply(this, args);
        });
    };
};

// TODO: move this somewhere better!
function isString(s) {
    return (s.constructor === String);
}

Max.inlets = {};
Max.scalarMessages = {msg_int: 1, msg_float: 1};
Max.applyEntry = true;

// Name each inlet and set a callback function
// Usage:
//   Max.SetInlets(['inletName', callbackFn, 'help'],
//                 ['nextInletName', callbackFn2, 'more help']);
// If there is no help entry, it defaults to the name of the inlet.
Max.SetInlets = function(_) {
    inlets = arguments.length;
    for (var i = 0; i < arguments.length; ++i) {
        var entry = arguments[i];
        Max.inlets[i] = {name: entry[0], func: entry[1]};
        var help = entry[2] ? (entry[0] + ': ' + entry[2]) : entry[0];
        setinletassist(i, help);
    }
};

/** New-style, with objects! */
Max.setInletsJson = function(json) {
    inlets = json.length;
    forEach(json, function(desc, i) {
        Max.inlets[i] = {name: desc.name, func: desc.delegate};
        var help = desc.name;
        if (desc.help)
            help += ': ' + desc.help;
        setinletassist(i, help);
    });
};

Max.ObjectInlets = function(object, names, methods) {
    var results = [];

    methods = methods || object._methods;
    if (methods) {
        for (var i in methods) {
            var method = methods[i],
                name = method[0],
                help = method[1] || name,
                func = method[2] || object[name];
            if (!func)
                print('ERROR! no function for', name);
            results.push([name, func, help]);
        }
    } else {
        names = names || object.names;
        for (var i = 0; i < names.length; ++i)
            results.push([names[i], object[names[i]], names[i]]);
    }
    Max.SetInlets.apply(this, results);
};

Max.SetterInlets = function(item) {
    Max.setterItem = item;
    var names = item.names;
    inlets = names.length;
    for (var i = 0; i < names.length; ++i)
        setinletassist(i, names[i]);
}

// Return the name of the current inlet, or the numeric name if you haven't set
// the names.
Max.Inlet = function() {
    return (inlet in Max.inlets) ? Max.inlets[inlet] : inlet;
};

function anything(_) {
    var item = Max.setterItem;
    if (item) {
        var name = item.names[inlet];
        if (arguments.length == 0)
            item[name] = messagename;
        else if (arguments.length == 1 && Max.scalarMessages[messagename])
            item[name] = arguments[0];
        else
            item[name] = arrayfromargs(arguments);

        item.lastUpdated = name;
        item.update();
    } else {
        var entry = Max.inlets[inlet];
        if (entry && entry.func) {
            var args = arrayfromargs(arguments);
            if (!(messagename == 'list' || Max.scalarMessages[messagename]))
                args = [messagename].concat(args);
            if (Max.applyEntry)
                entry.func.apply(this, args);
            else
                entry.func(args);
        } else {
            print('ERROR: anything didn\'t understand input for', inlet,
                  Max.Inlet());
        }
    }
};

var NANO = new Laser.Nano();

Max.SetInlets(['cc', NANO.receiveController, 'Continuous controller']);

print('\nOriginal source:', "js/max/nanolaser.js", ' Compile date:', 'Fri Jan  8 15:04:20 EST 2016');
