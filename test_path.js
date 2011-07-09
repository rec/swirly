autowatch = 1;

function run() {
  var live = new LiveAPI(this.patcher);

  live.path = [ 'this_device',
                'canonical_parent',
                'canonical_parent',
                'master_track',
                'mixer_device',
                'cue_volume',
                'canonical_parent',
                'canonical_parent',                                                                          
                ];

  outlet(0, live.id);
  for (var i = 0; i < live.children.length; ++i) {
    outlet(0, live.children[i]);
  }
}