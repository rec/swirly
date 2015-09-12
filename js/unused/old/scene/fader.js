#ifndef __SWIRLY_SCENE_FADER__
#define __SWIRLY_SCENE_FADER__

#include "swirly/scene/scene.js"
#include "swirly/util/Dict.js"

Scene.Fader = function() {
  var that = this;  // "this" can change value, so capture it as "that".

  this.Outlet = function(_) {
    outlet(0, arrayfromargs(arguments));
  };

  this.DMX = function(light, value) {
    this.Outlet('dmx', light, value);
  };

  this.Blackout = function() {
    that.DMX(0, 0);
    that.state = {};
  };

  // Update the dictionary.
  this.Update = function(changes) {
    for (var c in changes) {
      if (that.state[c] != changes[c])
        that.DMX(c, (that.state[c] = changes[c]));
    }
  };

  this.Jump = function(state) {
    var blackout = {};
    for (var i in that.state) {
      if (!(i in state))
        blackout[i] = 0;
    }
    that.Update(blackout);
    that.Update(state);
  };

  this.NextChange = function(fade, time) {
    return Scene.NextChange(that.state, fade.from, fade.to, time);
  };

  this.Fade = function(state, time) {
    var from = {'state': Dict.Copy(that.state), 'time': that.time};
    var to = {'state': state, 'time': time};
    var fade = {'from': from, 'to': to};
    that.fades = [fade];
    that.Outlet('delay', that.NextChange(fade, that.time));
  };

  this.Timer = function(time) {
    that.time = time;
    var delay;
    if (that.fades.length) {
      for (var i = that.fades.length - 1; i >= 0; --i) {
        var fade = that.fades[i];
        that.Update(Scene.Apply(fade.from.state, fade.to.state, time, 'time'));
        if (fade.to.time <= time) {
          delete that.fades[i];
        } else {
          var change = that.NextChange(fade, time);
          if (change > 0 && (!delay || change < delay)) {
            delay = change;
          }
        }
      }
    }

    if (delay)
      that.Outlet('delay', delay);
  };

  this.Init = function() {
    that.scenes = {};
    that.state = {};
    that.ClearFades();
    that.Outlet('timer');
  };

  this.ClearFades = function() {
    that.fades = [];
  };

  this.AbstractScene = function(methodName) {
    return function(_) {
      for (var i = 0; i < arguments.length; ++i) {
        if (arguments[i] in that.scenes)
          arguments[i] = that.scenes[arguments[i]];
        that[methodName].apply(that, arrayfromargs(arguments));
      }
    };
  };
};

#endif  // __SWIRLY_SCENE_FADER__
