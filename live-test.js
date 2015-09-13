autowatch = 1;

function log() {
  for(var i=0,len=arguments.length; i<len; i++) {
    var message = arguments[i];
    if(message && message.toString) {
      var s = message.toString();
      if(s.indexOf("[object ") >= 0) {
        s = JSON.stringify(message);
      }
      post(s);
    }
    else if(message === null) {
      post("<null>");
    }
    else {
      post(message);
    }
  }
  post("\n");
}
 
log("___________________________________________________");
log("Reload:", new Date);

var liveObject = new LiveAPI("live_set");
// log(liveObject.info);
var isPlaying = liveObject.get('is_playing');
log(isPlaying);

liveObject.set('is_playing', 1 - Number(isPlaying));

//var tempo = liveObject.get('tempo');
// liveObject.set('tempo', parseFloat(tempo) + 10.0);

// var trackCount = liveObject.getcount('tracks');
//log(trackCount);
//log(liveObject.get('tracks'));
// log(liveObject.get('tracks')[0]);

//var track = new LiveAPI('live_set tracks 0');
var track = new LiveAPI(['live_set', 'tracks', 1]);
log(track.info);
log(track.get('name'));
post('\n\n---------------\n\n');
var mute = track.get('mute');
log(mute, typeof(mute), Number(mute), typeof(Number(mute)));
track.set('mute', 1 - Number(mute));
log(track.get('mixer_device'));

track.goto('mixer_device');

// Now it's a mixer.
log(track.info);
//track.goto('volume');
//log(track.info);
//log(track.get('value'));
//track.set('value', 0.25);


//var volume2 = new LiveAPI(['live_set', 'tracks', 1, 'mixer_device', 'volume']);
//log(volume2.get('value'));