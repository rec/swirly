#ifndef __ONCLIPCHANGE
#define __ONCLIPCHANGE

#include "swirly/live/live.js"
#include "swirly/util/string.js"

Live.onClipChange = function(callback) {
  var live;

  function localCallback() {
    var slot = live.get('playing_slot_index');
    var path = Util.RemoveQuotes(live.path) + ' clip_slots ' + slot + ' clip';
    callback(Util.ArrayToString(new LiveAPI(path).get('name')));
  };

  live = new LiveAPI(localCallback, 'this_device canonical_parent');
  live.property = 'playing_slot_index';
};

#endif  // __ONCLIPCHANGE
