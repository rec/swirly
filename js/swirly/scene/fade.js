#ifndef __SWIRLY_SCENE_FADE
#define __SWIRLY_SCENE_FADE

#include "scene.js"

Scene.Fade = {
  'Level': function(level, time) {
    this.level = level;
    this.time = time;
  },

  'Segment': function(from, to) {
    this.from = from;
    this.to = to;

    this.Rise = function() { return (this.to.level - this.from.level); };
    this.Time = function() { return (this.to.time - this.from.time); };
  },

  'Linear': {
    'timeToLevel': Scene.Identity,
    'levelToTime': Scene.Identity,
    },

  'Power': function(n) {
    return
  },


  },



Scene.Fade.Linear = function() {
  this.timeToLevel = function(time, segment) {
    return from.level + segment.Rise() * (time - from.time) / segment.Time();
  };

  this.levelToTime = function(level, segment) {
    return from.time + segment.Time() * (time - from.time) / segment.Time();
    segment.slope();

    if (segment.IsVertical())
      return segment.to.time;

  };
};

// A fade maps [0..1] to [0..1]
Scene.Fade.Linear = {
  'timeToLevel': function(x) { return x; },
  'levelToTime': function(x) { return x; },
};

Scene.Fade.Sqrt = {
  'timeToLevel': function(x) { return x ** 0.5; },
  'levelToTime': function(x) { return x * x; },
};

Scene.Fade.Sqr = {
  'timeToLevel': function(x) { return x * ; },
  'levelToTime': function(x) { return x ** 0.5x; },
};



    return from.time + segment.Time() * (time - from.time) / segment.Time();
    segment.slope();

    if (segment.IsVertical())
      return segment.to.time;

  };
};



#endif  // __SWIRLY_SCENE_FADE
