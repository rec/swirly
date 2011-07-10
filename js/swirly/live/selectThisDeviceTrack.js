#ifndef __SWIRLY_LIVE_SELECTTHISDEVICETRACK
#define __SWIRLY_LIVE_SELECTTHISDEVICETRACK

#include "swirly/live/live.js"

Live.selectThisDeviceTrack = function() {
  Live.api.path = 'this_device canonical_parent';
  var id = Live.api.id;
  Live.api.path = ['live_set', 'view'];
  Live.api.set('selected_track', 'id', id);
};

#endif  // __SWIRLY_LIVE_SELECTTHISDEVICETRACK