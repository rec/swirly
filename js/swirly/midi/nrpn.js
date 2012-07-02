#ifndef __SWIRLY_NRPN
#define __SWIRLY_NRPN

#include "swirly/midi/midi.js"
#include "swirly/util/mod.js"

Midi.Nrpn = {};

Midi.Nrpn.MODULUS = Math.pow(2, 7);
Midi.Nrpn.MAX = Midi.Nrpn.MODULUS * Midi.Nrpn.MODULUS;

Midi.Nrpn.Value = function(value) {
  const MODULUS = Midi.Nrpn.MODULUS;
  const MAX = Midi.Nrpn.MAX;

  this.Set = function(value) {
    this.value = Util.Mod(value, MAX);
    this.coarse = Math.floor(this.value / MODULUS);
    this.fine = this.value % MODULUS;
  };

  this.Equals = function(that) {
    return (this.value == that.value);
  };

  this.Increment = function(inc) {
    this.Set(this.value + inc);
  };

  this.Copy = function() {
    return new Midi.Nrpn.Value(this.value);
  };

  if (value !== null)
    this.Set(value);
};

Midi.Nrpn.CONTROLLER = {
  data: {coarse: 6, fine: 38},
  decrement: 97,
  increment: 96,
  parameter: {coarse: 99, fine: 98},
};

Midi.Nrpn.CONFIG = {
  dedupe: {
    parameter: {all: true, coarse: true, fine: true},
    data: {all: false, coarse: true, fine: false},
  },

  increment: {enabled: true, multi: false},
};

Midi.Nrpn.Outputer = function(config) {
  this.parameter = new Midi.Nrpn.Value();
  this.data = new Midi.Nrpn.Value();
  this.config = config || Midi.Nrpn.CONFIG;

  const dedupe = this.config.dedupe;
  const controller = Midi.Nrpn.CONTROLLER;
  const names = ['parameter', 'data'];
  const bytes = ['coarse', 'fine'];

  this.Output = function(parameter, data) {
    var result = [];
    var that = {
      parameter: new Midi.Nrpn.Value(parameter),
      data: new Midi.Nrpn.Value(data),
    };

    for (var i in names) {
      var name = names[i];
      if (!(dedupe[name].all && that[name].Equals(this[name]))) {
        for (var j in bytes)
          result.push([controller[name][bytes[j]], that[name][bytes[j]]]);
      }
    }
    Postln(result);
    return result;
  };
};

#endif  // __SWIRLY_NRPN
