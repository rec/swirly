#ifndef __ONCLIPCHANGE
#define __ONCLIPCHANGE

#include "swirly/live/live.js"
#include "swirly/util/print.js"
#include "swirly/util/string.js"

Live.onClipChange = function(callback) {
  post('requesting onClipChange\n');
  var live;

  if (!true) {

  } else {
  function localCallback(_) {
    post('localcallback', Print(arrayfromargs(arguments)), '\n');
    if (!live) {
      post('no live!?\n');
      return;
    }
    var slot = live.get('playing_slot_index');
    var path = Util.RemoveQuotes(live.path) + ' clip_slots ' + slot + ' clip';
    post('localcallback2!', Print(path), '\n');
    var value = Util.ArrayToString(new LiveAPI(path).get('name'));
    post('localcallback3!', Print(value), '\n');
    callback(value);
  };

  live = new LiveAPI(localCallback, 'this_device canonical_parent');
  live.property = 'playing_slot_index';
  }
};

#endif  // __ONCLIPCHANGE
