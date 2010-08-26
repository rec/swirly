#ifndef __SWIRLY_SCENE
#define __SWIRLY_SCENE

var Scene = {
  'Identity': function(x) {
    return x;
  },

  'Power': function(x, n) {
    return x ^ n;
  },

  'Log': function(x, n) {
    return Math.log(n * x + 1) / Math.log(n + 1);
  },

  'Exp': function(x, n) {
    return (Math.pow(n + 1, x) - 1) / n;
  },

  'Apply': function(from, to, time, inter) {
    inter = inter || Scene.Linear;
    if (time < from.time) time = from.time;
    if (time > to.time) time = to.time;
    var s = {};

    for (i in to.state)
      s[i] = inter(time, from.time, to.time, from.state[i] || 0, to.state[i], i);

    return s;
  },

  'Linear': function(x, fromX, toX, fromY, toY) {
    return Math.floor(fromY + (toY - fromY) * (x - fromX) / (toX - fromX));
  },

  'NextChange': function(state, from, to, time, inverse, inter) {
    inverse = inverse || Scene.Linear;
    var delta;

    function op(x, fromX, toX, fromY, toY, yname) {
      var dy = toY - fromY;
      var nextY = state[yname] || 0;

      if (dy > 0)
        ++nextY;
      else if (dy < 0)
        --nextY;
      else {
        post('!!oops\n');
        return 0;
      }

      var d = inverse(nextY, fromY, toY, fromX, toX) - x;
      if (delta == undefined || delta > d)
        delta = d;
      return d;
    };

    Scene.Apply(from, to, time, op, inter);
    return delta;
  },
};

#endif  // __SWIRLY_SCENE
