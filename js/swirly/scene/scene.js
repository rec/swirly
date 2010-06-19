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

  'Interpolate': function(from, to, x, xname, inter) {
    var state = {}
    if (!((xname in from) && (xname in to))) {
      post('error: missing xname', xname);
      return;
    }

    var run = to[xname] - from[xname];
    var dx = inter((x - from[xname]) / run);

    for (var yname in from) {
      if (yname != xname) {
        if (yname in to)
          state[yname] = from[yname] + (to[yname] - from[yname]) * dx;
        else
          post('error: tried to interpolate unmatching values for name', yname);
      }
    }
    return state;
  },

  'Update': function(state, changes, equal, action) {
    for (var c in changes) {
      var value = changes[c];
      if ((c in state) && !equal(state[c], value)) {
        state[c] = value;
        action(c, value);
      }
    }
  },

};

#endif  // __SWIRLY_SCENE
