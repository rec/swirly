#ifndef __UTIL_READER
#define __UTIL_READER

#include "swirly/util/error.js"
#include "swirly/util/string.js"
#include "swirly/util/trim.js"

// Read characters or JSON data from files.
var FileReader = new Object();

FileReader.LINE_SPLIT = /\r?\n/;
FileReader.PATH = [];

FileReader.SetPath = function(path) {
    FileReader.PATH = path;
    post('Current path is now', path.join(':'), '\n');
};

FileReader.separator = '/';

FileReader.IsRelative = function(name) {
    return (name[0] != this.separator) && (name.indexOf(':' ) == -1);
};

FileReader.Open = function(name) {
    name = Util.trim(name);
    var path = [''];
    if (FileReader.IsRelative(name))
        path = FileReader.PATH;

    for (var i in path) {
        var p = path[i];
        var file = new File(p.length ? (p + this.separator + name) : name);
        if (file.isopen)
            return file;
    }

    ERROR("Couldn't open file", name);
    return null;
};

FileReader.Read = function(filename, length) {
    var file = FileReader.Open(filename);
    return file && file.readstring(length || 1000000);
};

FileReader.CleanJsonComments = function(data) {
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

FileReader.ParseJson = function(data, filename) {
    filename = filename || '(none)';
    try {
        data = FileReader.CleanJsonComments(data)
        return (data == '') ? {} : JSON.parse(data);
    } catch (err) {
        post('JSON error in file ' + filename + ':' +
             err.lineNumber + ': ' + err.name + '\n');
        return null;
    }
};

FileReader.ReadJson = function(filename, length) {
    var data = FileReader.Read(filename, length);
    return data && FileReader.ParseJson(data, filename);
};

#endif  // __UTIL_READER
