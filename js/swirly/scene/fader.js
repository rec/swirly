#ifndef __SWIRLY_SCENE_FADER__
#define __SWIRLY_SCENE_FADER__

#include "swirly/scene/scene.js"

Scene.Fader = function() {
  this.Outlet = function(_) {
    outlet(0, arrayfromargs(arguments));
  };

  this.DMX = function(light, value) {
    this.Outlet('dmx', light, value);
  };

  this.Blackout = function() {
    this.DMX(0, 0);
    this.state = {};
  };

  // Update the dictionary.
  this.Update = function(changes) {
    for (var c in changes) {
      if (this.state[c] != changes[c])
        this.DMX(c, (this.state[c] = changes[c]));
    }
  };

  this.AbstractScene = function(method) {
    return function(_) {
      if (this.scenes && arguments[0] in this.scenes) {
        arguments[0] = this.scenes[arguments[0]];
        method.apply(this, arrayfromargs(arguments));
      } else {
        post('error: no scene named', scene, '\n');
      }
    };
  };

  this.Jump = function(scene) {
    var blackout = {};
    for (var i in this.scene) {
      if (!scene[i])
        blackout[i] = 0;
    }
    this.Update(blackout);
    this.Update(scene);
  };

  this.Fade = function(scene, time) {
    // this.
  };

  this.Timer = function(time) {
    this.time = time;
    var delay;
    if (this.fades.length) {
      for (var i = this.fades.length - 1; i >= 0; --i) {
        var fade = this.fades[i];
        this.Update(Scene.Apply(fade.from, fade.to, time, 'time'));
        if (fade.to.time <= time) {
          delete this.fades[i];
        } else {
          var change = Scene.NextChange(this.state, fade.from, fade.to, time);
          if (change > 0 && (delay == undefined || change < delay))
            delay = change;
        }
      }
    }

    if (delay != undefined)
      this.Outlet('delay', delay);
  };

  this.Init = function() {
    this.state = {};
    this.ClearFades();
    this.Outlet('timer');
  };

  this.ClearFades = function() {
    this.fades = [];
  };
};

#endif  // __SWIRLY_SCENE_FADER__
