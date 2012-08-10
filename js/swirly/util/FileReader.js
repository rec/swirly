#ifndef __UTIL_READER
#define __UTIL_READER

#include "swirly/util/string.js"

// Read characters or JSON data from files.
var FileReader = new Object();

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

FileReader.ParseJson = function(data, filename) {
  filename = filename || '(none)';
  try {
    var value = (data === '') ? {} : JSON.parse(data);
    return value;
  } catch (err) {
    post('JSON error in file ' + filename + ':' +
         err.lineNumber + ': ' + err.name + '\n');
    return null;
  }
};

FileReader.ReadJson = function(filename, length) {
  var data = FileReader.Read(filename, length);
  return data && FileReader.ParseJson(data);
};

#if 0

// Everything below this is deprecated!
FileReader.Name = function(f) {
  f = Util.trim(f);
  if (f.indexOf(':' ) == -1 && f[0] != this.separator)
    return FileReader.WORKING_DIRECTORY + FileReader.separator + f;
  else
    return f;
};

FileReader.ParseOrReadData = function(data, length) {
  if (typeof(data) != 'string') {
    ERROR('Not a string!', data);
    return data;
  }

  var d = Util.trim(data);
  if (!d.length) {
    ERROR('Data was empty!', data);
    return null;
  }

  var filename = '(none)';
  if (FileReader.fileRE.test(d)) {
    filename = d;
    d = FileReader.Read(filename, length);
  }
  return FileReader.ParseData(d, filename);
};

FileReader.SetWorkingDirectory = function(directoryName) {
  FileReader.WORKING_DIRECTORY = directoryName;
  post('Current working directory is now', directoryName, '\n');
};

FileReader.fileRE = /\w+[.]\w+/;

FileReader.ReadDataIfString = function(data, length) {
  return (Util.IsString(data) ? FileReader.ReadData(data, length) : data) || {};
};

FileReader.ReadDataAndDeference = function(name, depth, length) {
  if (depth == null)
    depth = 1;
  var data = FileReader.ReadDataIfString(name, length);
  if (data && depth > 0) {
    for (var i in data)
      data[i] = FileReader.ReadDataAndDeference(data[i], depth - 1, length)
  }
  return data;
};

FileReader.WORKING_DIRECTORY =
  '/Users/tom/Library/Application Support/Ableton/Library/Presets/' +
  'MIDI Effects/Max Midi Effect/data';

#endif

#endif  // __UTIL_READER

