#ifndef __SWIRLY_SCENE_FADER__
#define __SWIRLY_SCENE_FADER__

#include "swirly/scene/scene.js"

Scene.Fader = function() {
  var that = this;  // "this" can change value, so capture it as "that".

  that.Outlet = function(_) {
    outlet(0, arrayfromargs(arguments));
  };

  that.DMX = function(light, value) {
    that.Outlet('dmx', light, value);
  };

  that.Blackout = function() {
    that.DMX(0, 0);
    that.state = {};
  };

  // Update the dictionary.
  that.Update = function(changes) {
    for (var c in changes) {
      if (that.state[c] != changes[c])
        that.DMX(c, (that.state[c] = changes[c]));
    }
  };

  that.Jump = function(scene) {
    var blackout = {};
    for (var i in that.state) {
      post('!', i, that.state[i], '\n');
      if (!(i in scene))
        blackout[i] = 0;
    }
    that.Update(blackout);
    that.Update(scene);
  };

  that.Fade = function(scene, time) {
  };

  that.Timer = function(time) {
    that.time = time;
    var delay;
    if (that.fades.length) {
      for (var i = that.fades.length - 1; i >= 0; --i) {
        var fade = that.fades[i];
        that.Update(Scene.Apply(fade.from, fade.to, time, 'time'));
        if (fade.to.time <= time) {
          delete that.fades[i];
        } else {
          var change = Scene.NextChange(that.state, fade.from, fade.to, time);
          if (change > 0 && (delay == undefined || change < delay))
            delay = change;
        }
      }
    }

    if (delay != undefined)
      that.Outlet('delay', delay);
  };

  that.Init = function() {
    that.state = {};
    that.ClearFades();
    that.Outlet('timer');
  };

  that.ClearFades = function() {
    that.fades = [];
  };

  that.AbstractScene = function(methodName) {
    return function(_) {
      if (that.scenes && arguments[0] in that.scenes) {
        arguments[0] = that.scenes[arguments[0]];
        that[methodName].apply(that, arrayfromargs(arguments));
      } else {
        post('error: no scene named', arguments[0], '\n');
      }
    };
  };
};

#endif  // __SWIRLY_SCENE_FADER__
