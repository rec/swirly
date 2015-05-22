autowatch = 1;
outlets = 1;

#include "swirly/max/inlets.js"
#include "swirly/util/logging.js"
#include "swirly/windmapper/Scenes.js"
#include "swirly/windmapper/ShowRunner.js"

var _show_runner = new ShowRunner();

Max.ObjectInlets(_show_runner);

_show_runner.addSequence(
    ['first fade in', Loop(Scenes.fadeIn, 3, 2)],
    ['flash', Scenes.flash]);

_show_runner.addMapper(
    ['test', Scenes.moving_mapper]);

LOADED();
