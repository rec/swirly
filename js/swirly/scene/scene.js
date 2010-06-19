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
    return log(n * x + 1) / log(n + 1);
  },

  'Exp': function(x, n) {
    return ((n + 1) ^ x - 1) / n;
  },

  'Interpolate': function(from, to, x, xname, yname, inter, param) {
    var run = to[xname] - from[xname];
    if (!run)
      return to[xname];

    var dx = inter((x - from[xname]) / run, param);
    return from[yname] + (to[yname] - from[yname]) * dx;
  },
};

#endif  // __SWIRLY_SCENE
