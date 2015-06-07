    ['start', Scenes.start]
#if 0
    ['victory', Loop(Scenes.fadeIn, 3, 2)],
    ['flash', Scenes.flash],
    ['program 1', Scenes.program1],
    ['program 2', Scenes.program2]
#endif

#if 0
    start: DMXScene(
        laser_dict('line', 'red', {hpos: 129}, 0),
        laser_dict('square', 'green', {hpos: 129}, 1),
        laser_dict('triangle', 'yellow', {hpos: 129}, 2),
        laser_dict('wave', 'cyan', {hpos: 129}, 3)),
#endif

    fadeIn: EnvelopeSequence(
        [[Channel.moving.x,
          new Envelope({data: [[0, 0], [0.5, 50], [3, 250]]} )]]),

    flash: Sequence(
        [0, 0],
        [1, {2: 100, 3: 100}],
        [2, 0],
        [3, {2: 100, 3: 100}],
        [4, 0]
    ),

    ['blackout',
     function() {
         return function(show) {
             post('here?\n');
             show._clearDMX();
         };
     }],
