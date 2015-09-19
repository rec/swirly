#pragma once

#include "swirly/util/error.js"
#include "swirly/util/string.js"
#include "swirly/util/trim.js"

// Read characters or JSON data from files.
var FileReader = {};

FileReader.LINE_SPLIT = /\r?\n/;
FileReader.PATH = [];
FileReader.MAX_FILE_LENGTH = 1024000;  // 1M.

FileReader.setPath = function(path) {
    FileReader.PATH = path;
    print('Current path is now', path.join(':'));
};

FileReader.separator = '/';

FileReader.isRelative = function(name) {
    // TODO: why's this disabled?!
    return false && (name[0] != this.separator) && (name.indexOf(':' ) == -1);
};

FileReader.open = function(name) {
    name = Util.trim(name);
    var path = [''];
    if (FileReader.isRelative(name))
        path = FileReader.PATH;

    for (var i in path) {
        var p = path[i];
        var file = new File(p.length ? (p + this.separator + name) : name);
        if (file.isopen)
            return file;
    }

    THROW('Couldn\'t open file', name);
};

FileReader.read = function(filename, length) {
    length = length || FileReader.MAX_FILE_LENGTH;
    var f = new File(filename, 'read');
    f.open();
    if (!f.isopen)
        THROW('Couldn\'t open file', filename);
    return f.readstring(length);
    // return FileReader.open(filename).readstring(length);
};

FileReader.cleanJsonComments = function(data) {
    var lines = data.split(FileReader.LINE_SPLIT);
    for (var i in lines) {
        var line = lines[i];
        var wasBackslash = false;
        for (var j = 0, len = line.length; j < len; j++) {
            if (wasBackslash) {
                wasBackslash = false;
            } else {
                var ch = line[j];
                if (ch == '\\') {
                    wasBackslash = true;
                } else if (ch == '#') {
                    lines[i] = line.substr(0, j);
                    break;
                }
            }
        }
    }
    return lines.join('\n');
};

FileReader.parseJson = function(data, filename) {
    try {
        data = FileReader.cleanJsonComments(data)
        return (data == '') ? {} : JSON.parse(data);
    } catch (err) {
        THROW('JSON error in file ', (filename || '(none)') + ':' +
              err.lineNumber + ': ' + err.name);
    }
};

FileReader.readJson = function(filename, length) {
    return FileReader.parseJson(FileReader.read(filename, length), filename);
};

FileReader.jsonReader = function(baseDirectory, length) {
    baseDirectory = Util.addSuffix(baseDirectory, '/');

    return function(filename) {
        filename = Util.addSuffix(filename, '.json');
        return FileReader.readJson(baseDirectory + filename, length);
    };
};
