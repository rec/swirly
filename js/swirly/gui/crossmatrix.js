autowatch = 1;

#include "swirly/gui/matrix.js"

var matrix = new Matrix();

sketch.default2d();
matrix.draw();

function onresize(w, h)
{
	matrix.resize();
	matrix.draw();
}

function onclick(x, y)
{
    matrix.onclick(x, y);
}

function ondblclick(x, y)
{
	onclick(x, y);
}

function defer(def) {
    matrix.setDefer(!!def);
}

function release() {
    matrix.release();
}

function left() {
    matrix.move(-1, 0);
}

function right() {
    matrix.move(1, 0);
}

function up() {
    matrix.move(0, -1);
}

function down() {
    matrix.move(0, 1);
}

function toggle() {
    matrix.toggle();
}

function clear() {
    matrix.clear();
}

function reset() {
    matrix.reset();
    matrix.draw();
}

function clear_selection() {
    matrix.selection = undefined;
    matrix.outputSelection();
    matrix.draw();
}

function onresize() {
    matrix.resize();
    matrix.draw();
}

function msg_int(i) {
    matrix.onInput(i);
}

function preset() {
    matrix.presetChanged();
};

function text(_) {
    for (var i = 0; i < arguments.length; ++i)
        post(arguments[i]);
    post('\n');
};

function midi(cc, value) {
};

function lfo(number, value) {
};

Max.SetOutlets(
    ['router', 'Commands to router object.'],
    ['selection', 'A two-element list with the in/out selection names.']
);
