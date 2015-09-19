#ifndef __SOFTSTEP__LED
#define __SOFTSTEP__LED

#include "swirly/softstep/softstep.js"

Softstep.LED = function(output) {
  var self = this;
  self.origin = 1;

  var GREEN = 0, RED = 1, YELLOW = 2;
  var colors = {green: GREEN, red: RED, yellow: YELLOW};

  var OFF = 0, ON = 1, BLINK = 2, FAST = 3, FLASH = 4;
  var states = {off: OFF, on: ON, blink: BLINK, fast: FAST, flash: FLASH};
  var COLOR_SIZE = 3;
  var STATE_SIZE = 5;
  var ALL = 127;
  var LED_SIZE = 10;

  function check(color, state) {
    if (colors[color] === null)
      print("Don't understand color '" + color + "'");
    else if (states[state] == null)
      print("Don't understand state '" + state + "'");
    else
      return true;

    return false;
  };

  function outputToLed(led, color, state) {
    output(0xb0, 40, led);
    output(0xb0, 41, color);
    output(0xb0, 42, state);
    output(0xb0, 0, 0);
    output(0xb0, 0, 0);
    output(0xb0, 0, 0);
  };

  function setLed(led, color, state) {
    print('Setting ', color, ' ', state);
    if (color == RED)
      outputToLed(led, GREEN, OFF);
    else if (color == GREEN)
      outputToLed(led, RED, OFF);

    outputToLed(led, color, state);
  };

  function ledToCCValue(led) {
    return (led == 'all') ? ALL : (led - self.origin);
  };

  function rand(s) {
    return Math.min(s - 1, Math.floor(Math.random() * s));
  };

  // Remove an item from the list, swap the last item in to its place, and
  // return the remove item.
  function removeAt(list, index) {
    var oldItem = list[index];
    var newItem = list.pop();
    if (oldItem !== newItem)
      list[index] = newItem;

    return oldItem;
  };

  // Remove and return a random item from a list.
  function popRandom(list) {
    if (list.length)
      return removeAt(list, rand(list.length));
  };

  // Set a given state and guarantee that the other states are off.
  self.Led = function(led, color, state) {
    if (check(color, state))
      setLed(ledToCCValue(led), colors[color], states[state]);
  };

  // Randomize the state of all the LEDs.
  self.Randomize = function() {
    for (var led = 0; led < LED_SIZE; ++led)
      setLed(led, rand(COLOR_SIZE), rand(STATE_SIZE));
  };

  var usedNotes = [], freeNotes = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

#if 0
  function noteOn(note, velocity) {
    if (usedNotes.length == LED_SIZE) {
       var led = popRandom(usedNotes).led;
      setLed(led, YELLOW, OFF);
      freeNotes.push(led);
    }

    var led = popRandom(freeNotes);
    var color = (velocity > 100) ? YELLOW : (velocity > 50) ? RED : GREEN;
    setLed(led, color, ON);
    usedNotes.push({led: led, note: note});
  };

  function noteOff(note, velocity) {
    for (var i = 0; i < usedNotes.length; ++i) {
      var used = usedNotes[i];
      if (used.note == note) {
        setLed(used.led, YELLOW, OFF);
        removeAt(usedNotes, i);
        return;
      }
    }
  };

  self.Note = function(noteVel) {
    var note = noteVel[0], velocity = noteVel[1];
    if (velocity)
      noteOn(note, velocity);
    else
      noteOff(note);
  };
#endif

  self.Clear = function() {
    outputToLed(ALL, GREEN, OFF);
    outputToLed(ALL, RED, OFF);
    usedNotes = [];
    freeNotes = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  };
};

#endif  // __SOFTSTEP__LED
