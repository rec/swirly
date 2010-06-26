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

  'Apply': function(from, to, x, xname, inter) {
    inter = inter || Scene.Linear;
    var state = {};
    if (!((xname in from) && (xname in to))) {
      post('error: missing xname', xname);
      return;
    }
    var fromX = from[xname];
    var toX = to[xname];

    if (x < fromX) x = fromX;
    if (x > toX) x = toX;

    for (yname in from) {
      if (yname != xname) {
        if (yname in to)
          state[yname] = inter(x, fromX, toX, from[yname], to[yname], yname);
        else
          post('error: unmatched name', yname);
      }
    }
    return state;
  },

  'Linear': function(x, fromX, toX, fromY, toY) {
    return Math.floor(fromY + (toY - fromY) * (x - fromX) / (toX - fromX));
  },

  'Scale': function(x, mult) {
    return Math.floor(x * (mult || 512));
  },

  'NextChange': function(state, from, to, x, xname, inverse) {
    inverse = inverse || Scene.Linear;
    var delta;
    function op(x, fromX, toX, fromY, toY, yname) {
      var dy = toY - fromY;
      var nextY = state[yname];
      if (dy > 0)
        ++nextY;
      else if (dy < 0)
        --nextY;
      else
        return 0;

      var d = inverse(nextY, fromY, toY, fromX, toX) - x;
      if (delta == undefined || delta > d)
        delta = d;
      return d;
    };
    Scene.Apply(from, to, x, xname, op);
    return delta;
  },
};

#endif  // __SWIRLY_SCENE
