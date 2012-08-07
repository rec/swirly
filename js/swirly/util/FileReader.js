#ifndef __UTIL_READER
#define __UTIL_READER

#include "swirly/util/string.js"

// Read characters or JSON data from files.
var FileReader = new Object();

FileReader.root_directory =
  '/Users/tom/Library/Application Support/Ableton/Library/Presets/' +
  'MIDI Effects/Max Midi Effect/data';

FileReader.separator = '/';

FileReader.Name = function(filename) {
  if (filename.indexOf(':' ) == -1 && filename[0] != this.separator)
    return FileReader.root_directory + FileReader.separator + filename;
  else
    return filename;
};

FileReader.Read = function(filename, length) {
  filename = FileReader.Name(filename);
  var file = new File(filename);
  if (file.isopen)
    return file.readstring(length || 1000000);

  post("WARNING: Couldn't open file", filename, '\n');
  return '';
};

FileReader.ReadData = function(filename, length) {
  post('ReadData: ', filename, '\n');
  var data = FileReader.Read(filename, length);
  try {
    var value = (data === '') ? {} : JSON.parse(data);
    post('successfully read', filename, '\n');
    return value;
  } catch (err) {
    post('JSON error: file ' + filename + ':', err.lineNumber, err.name, '\n');
    return null;
  }
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

