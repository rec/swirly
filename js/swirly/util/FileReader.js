#ifndef __UTIL_READER
#define __UTIL_READER

#include "swirly/util/string.js"

// Read characters or JSON data from files.
var FileReader = new Object();

FileReader.CURRENT_WORKING_DIRECTORY =
  '/Users/tom/Library/Application Support/Ableton/Library/Presets/' +
  'MIDI Effects/Max Midi Effect/data';

FileReader.separator = '/';

FileReader.Name = function(f) {
  f = Util.trim(f);
  if (f.indexOf(':' ) == -1 && f[0] != this.separator)
    return FileReader.CURRENT_WORKING_DIRECTORY + FileReader.separator + f;
  else
    return f;
};

FileReader.ChangeDirectory = function(directoryName) {
  FileReader.CURRENT_WORKING_DIRECTORY = directoryName;
  post('Current working directory is now', directoryName, '\n');
};

FileReader.Read = function(filename, length) {
  filename = FileReader.Name(filename);
  var file = new File(filename);
  if (file.isopen)
    return file.readstring(length || 1000000);

  Postln("WARNING: Couldn't open file", filename);
  return '';
};

FileReader.ReadData = function(filename, length) {
  var contents = FileReader.Read(filename, length);
  return FileReader.ParseData(contents, filename);
};

FileReader.ParseData = function(data, filename) {
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

FileReader.fileRE = /\w+[.]\w+/;

FileReader.ParseOrReadData = function(data, length) {
  if (typeof(data) != 'string') {
    ERROR('Not a string!', data);
    return data;
  }

  var d = Util.trim(data);
  if (!d.length) {
    ERROR('Data was empty!', data);
    return {};
  }

  var filename = '(none)';
  if (FileReader.fileRE.test(d)) {
    filename = d;
    d = FileReader.Read(filename, length);
  }
  return FileReader.ParseData(d, filename);
};


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

#endif  // __UTIL_READER

