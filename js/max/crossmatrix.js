inlets = 1;
autowatch = 1;

#include "swirly/max/outlets.js"
#include "swirly/util/logging.js"
#include "swirly/util/forEach.js"

Max.SetOutlets(
    ['router', 'Commands to router object.'],
    ['selection', 'A two-element list with the in/out selection names.']
);

function Matrix(config) {
    config = config || this.default_config;

    for (var name in config)
        this[name] = config[name];

    this.columns = (this.column_names && this.column_names.length)
        || this.columns;
    this.rows = (this.row_names && this.row_names.length)
        || this.rows;
    this.colors = [
        this.color.disabled,
        this.color.enabled,
        this.color.clicked_for_enable,
        this.color.clicked_for_disable,
        this.color.will_be_disabled];

    this.matrix = new Array(this.columns);
    this.selection = undefined;

    for (var c = 0; c < this.columns; ++c)
        this.matrix[c] = new Array(this.rows);
    var colsize = (this.columns + this.line_ratio * this.column_lines.length);
    var rowsize = (this.rows + this.line_ratio * this.row_lines.length);
	this.colstep = 2.0 / colsize;
	this.rowstep = 2.0 / rowsize;

    this.column_offsets = []
    this.row_offsets = []

    var lineRatio = this.line_ratio;

    function make_offsets(count, lines, step) {
        var result = [], offset = 0.0, line_width = step * lineRatio;
        for (var i = 0, frontIndex = 0; i < count; ++i) {
            var front = lines[frontIndex];
            if (front !== undefined && front <= c) {
                offset += line_width;
                ++frontIndex;
            }
            result.push(offset);
            offset += step;
        }
        return result;
    };

    this.column_offsets = make_offsets(
        this.columns, this.column_lines, this.colstep);
    this.row_offsets = make_offsets(
        this.rows, this.row_lines, this.rowstep);

    this.reset();
};

Matrix.prototype.default_config = {
    rows: 80,
    columns: 80,
    color: {
        background: [1.0, 1.0, 1.0, 0.5],
        disabled: [0.9, 0.9, 0.9, 0.75],
        enabled: [0.0, 0.0, 0.0, 1.0],
        clicked_for_enable: [1.0, 0.7, 0.7, 1.0],
        clicked_for_disable: [0.5, 0.5, 0.5, 1.0],
        will_be_disabled: [0.5, 0.5, 0.5],
        selection: [1.0, 0.0, 0.0, 1.0],
        line_color: [0.5, 0.5, 0.5, 1.0],
    },
    circle_radius: 0.95,
    defer: true,
    merge_rows: [],

    column_names: ['a', 'b', 'c', 'd', 'e'],
    row_names: ['1', '2', '3', '4', '5'],

    column_lines: [0, 1, 2],
    row_lines: [3, 4],

    line_ratio: 0.01,
};

Matrix.DISABLED = 0;
Matrix.ENABLED = 1;
Matrix.CLICKED_FOR_ENABLE = 2;
Matrix.CLICKED_FOR_DISABLE = 3;
Matrix.WILL_BE_DISABLED = 4;

Matrix.CLICK_TRANSITION = [
    Matrix.CLICKED_FOR_ENABLE,
    Matrix.CLICKED_FOR_DISABLE,
    Matrix.DISABLED,
    Matrix.ENABLED,
    Matrix.ENABLED,
];

Matrix.CLEAR_TRANSITION = [
    Matrix.DISABLED,
    Matrix.ENABLED,
    Matrix.DISABLED,
    Matrix.ENABLED,
    Matrix.ENABLED
];

Matrix.RELEASE_TRANSITION = [
    Matrix.DISABLED,
    Matrix.ENABLED,
    Matrix.ENABLED,
    Matrix.DISABLED,
    Matrix.DISABLED
];

Matrix.prototype.reset = function() {
    this.forEach(Matrix.DISABLED);
};

Matrix.prototype.clear = function() {
    this.forEach(Matrix.CLEAR_TRANSITION);
};

Matrix.prototype.setColor = function(color) {
    sketch.glcolor(color[0], color[1], color[2], color[3]);
};

Matrix.prototype.setState = function(column, row, state) {
    var previousState = this.matrix[column][row]
    if (state !== undefined && previousState !== state) {
        this.matrix[column][row] = state;
        if (state !== previousState)
            Max.Out.router(column, row, state);
    }
};

Matrix.prototype.forEach = function(func, dontDraw) {
    if (func instanceof Function) {
	    for (var c = 0; c < this.columns; c++)
		    for (var r = 0; r < this.rows; r++)
                this.setState(c, r, func(c, r, this.matrix[c][r]));
    } else if (func instanceof Array || func instanceof Object) {
	    for (var c = 0; c < this.columns; c++)
		    for (var r = 0; r < this.rows; r++)
                this.setState(c, r, func[this.matrix[c][r]]);
    } else {
	    for (var c = 0; c < this.columns; c++)
		    for (var r = 0; r < this.rows; r++)
                this.setState(c, r, func);
    }

    if (!dontDraw)
        this.draw()
};

Matrix.prototype.moveto = function(x, y) {
    sketch.moveto(x - 1.0, 1.0 - y, 0.0);
};

Matrix.prototype.line = function(x, y) {
    sketch.line(x, -y, 0.0);
};

Matrix.prototype.draw = function() {
	with (sketch)
	{
        var back = this.color.background;
		glclearcolor(back[0], back[1], back[2], back[3]);

		glclear();

        // Draw the guidelines.
        this.setColor(this.color.line_color);
        var line_width = this.line_ratio * this.colstep;
        for (var i = 0; i < this.column_lines.length; ++i) {
            this.moveto(this.column_offsets[this.column_lines[i]], 0);
            this.line(0.0, 2.0);
        }

        var line_width = this.line_ratio * this.rowstep;
        for (var i = 0; i < this.row_lines.length; ++i) {
            this.moveto(0, this.row_offsets[this.row_lines[i]]);
            this.line(2.0, 0.0);
        }

        var that = this;
        function drawCircle(c, r, state) {
	        that.moveto(that.column_offsets[c] + that.colstep / 2,
                        that.row_offsets[r] + that.rowstep / 2);
            that.setColor(that.colors[state]);
			circle(that.circle_radius / Math.max(that.rows, that.columns));
		};
        this.forEach(drawCircle, true);

        // Draw the selection.
        if (this.selection) {
	        this.moveto(this.column_offsets[this.selection[0]],
                        this.row_offsets[this.selection[1]]);
            this.setColor(this.color.selection);
            this.line(this.colstep, 0);
            this.line(0, this.rowstep);
            this.line(-this.colstep, 0);
            this.line(0, -this.rowstep);
        }
	}
    refresh();
};

Matrix.prototype.outputSelection = function() {
    var selection = ['', ''];
    if (this.selection) {
        var c = this.selection[0], r = this.selection[1];
        selection = [this.column_names[c] || c.toString(),
                     this.row_names[r] || r.toString()]
    }
    Max.Out.selection(selection[0], selection[1]);
};

Matrix.prototype.onclick = function(x, y) {
	var worldx = sketch.screentoworld(x, y)[0];
	var worldy = sketch.screentoworld(x, y)[1];

	var colwidth = 2.0 / this.columns;
	var rowheight = 2.0 / this.rows;

	var column = Math.floor((worldx + 1.0) / colwidth);
	var row = Math.floor((1.0 - worldy) / rowheight);
    this.clickSquare(column, row);
};

Matrix.prototype.clickSquare = function(column, row) {
    var state = this.matrix[column][row];
    var mustDisable = (this.merge_rows.indexOf(row) == -1);
    var that = this;

    function change(before, after, output) {
        if (mustDisable)
            for (var c = 0; c < that.columns; ++c)
                if (c != column && that.matrix[c][row] == before)
                    that.setState(c, row, after);
    };

    this.selection = [column, row];
    this.outputSelection();

    if (this.defer) {
        if (state == Matrix.DISABLED) {
            change(Matrix.ENABLED, Matrix.WILL_BE_DISABLED);
            change(Matrix.CLICKED_FOR_ENABLE, Matrix.DISABLED);
        } else if (state == Matrix.CLICKED_FOR_ENABLE) {
            change(Matrix.WILL_BE_DISABLED, Matrix.ENABLED);
        } else if (state == Matrix.WILL_BE_DISABLED) {
            change(Matrix.CLICKED_FOR_ENABLE, Matrix.DISABLE);
        }
        this.setState(column, row, Matrix.CLICK_TRANSITION[state]);
    } else {
        this.setState(column, row, 1 - state);
        if (state == Matrix.DISABLED)
            change(Matrix.ENABLED, Matrix.DISABLED, true);
    }
	this.draw();
};

Matrix.prototype.setDefer = function(def) {
    if (this.defer && !def) {
        this.clear();
        this.draw();
    }
    this.defer = def;
};

Matrix.prototype.release = function() {
    if (!this.defer) {
        post('ERROR: not in defer mode\n');
        return;
    }
    this.forEach(Matrix.RELEASE_TRANSITION);
};

Matrix.prototype.move = function(dx, dy) {
    if (!this.selection) {
        if (dx > 0 || dy > 0)
            this.selection = [0, 0];
        else if (dx < 0)
            this.selection = [this.columns - 1, 0];
        else
            this.selection = [0, this.rows - 1];
    } else {
        this.selection[0] += dx;
        this.selection[1] += dy;
        if (this.selection[0] < 0)
            this.selection[0] += this.columns;
        if (this.selection[1] < 0)
            this.selection[1] += this.rows;

        if (this.selection[0] >= this.columns)
            this.selection[0] -= this.columns;
        if (this.selection[1] >= this.rows)
            this.selection[1] -= this.rows;
    }
    this.outputSelection();
    this.draw();
};

Matrix.prototype.toggle = function() {
    if (this.selection)
        this.clickSquare(this.selection[0], this.selection[1]);
};

var matrix = new Matrix();

sketch.default2d();
matrix.draw();

function onresize(w, h)
{
	matrix.draw();
};

function onclick(x, y)
{
    matrix.onclick(x, y);
};

function ondblclick(x, y)
{
	onclick(x, y);
};

// Make functions private to prevent triggering from Max.
onclick.local = 1;
ondblclick.local = 1;
onresize.local = 1;

function defer(def) {
    matrix.setDefer(!!def);
};

function release() {
    matrix.release();
};

function left() {
    matrix.move(-1, 0);
};

function right() {
    matrix.move(1, 0);
};

function up() {
    matrix.move(0, -1);
};

function down() {
    matrix.move(0, 1);
};

function toggle() {
    matrix.toggle();
};

function clear() {
    matrix.clear();
};

function reset() {
    matrix.reset();
};

function clear_selection() {
    matrix.selection = undefined;
    matrix.outputSelection();
    matrix.draw();
};

LOADED();
