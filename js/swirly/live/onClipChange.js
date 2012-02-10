#ifndef __ONCLIPCHANGE
#define __ONCLIPCHANGE

#include "swirly/live/live.js"
#include "swirly/util/is_string.js"

Live.onClipChange = function(callback) {
  var live;
  function localCallback() {
    var clipSlot = live.get('playing_slot_index');
    var path = live.path.substring(1, live.path.length - 1) + ' clip_slots ' +
      clipSlot + ' clip';
    callback(Util.ArrayToString(new LiveAPI(path).get('name')));
  };

  live = new LiveAPI(localCallback, 'this_device canonical_parent');
  live.property = 'playing_slot_index';
};

#endif  // __ONCLIPCHANGE
