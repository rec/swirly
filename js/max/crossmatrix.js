// mymatrix.js
//
// simulates a simple grid of clickable widgets (a la matrixctrl)

// TODO:
// Clear needs to send outputs.
// Need external clear command.
// Control of the router.

// inlets and outlets
inlets = 1;
outlets = 1;
autowatch = 1;

function Matrix(config) {
    config = config || this.default_config;

    for (var name in config)
        this[name] = config[name];
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
	this.colstep = this.step_amount / this.columns;
	this.rowstep = this.step_amount / this.rows;
    this.reset();
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

Matrix.prototype.default_config = {
    rows: 6,
    columns: 6,
    color: {
        background: [1.0, 1.0, 1.0, 0.5],
        disabled: [0.9, 0.9, 0.9, 0.75],
        enabled: [0.0, 0.0, 0.0, 1.0],
        clicked_for_enable: [1.0, 1.0, 0.0, 1.0],
        clicked_for_disable: [0.0, 1.0, 1.0, 1.0],
        will_be_disabled: [0.5, 0.5, 0.5],
        selection: [1.0, 0.0, 0.0, 1.0],
    },
    step_amount: 2.0,
    circle_radius: 0.7,
    defer: true,
    merge_rows: [],
};

Matrix.prototype.setColor = function(color) {
    sketch.glcolor(color[0], color[1], color[2], color[3]);
};

Matrix.prototype.forEach = function(func, dontDraw) {
    var f;
    if (func instanceof Function)
        f = func;
    else if (func instanceof Array || func instanceof Object)
        f = function(c, r, state) { return func[state]; };
    else
        f = function() { return func; };

	for (var c = 0; c < this.columns; c++) {
		for (var r = 0; r < this.rows; r++) {
            var state = this.matrix[c][r];
            var result = f(c, r, state);
            if (result !== undefined && result != state) {
                this.matrix[c][r] = result;
                outlet(0, r, c, result);
            }
        }
    }

    if (!dontDraw)
        this.draw()
};

Matrix.prototype.draw = function() {
	with (sketch)
	{
        var back = this.color.background;
		glclearcolor(back[0], back[1], back[2], back[3]);

		glclear();
        var that = this;
        this.forEach(function(c, r, state) {
	        moveto((c * that.colstep + that.colstep / 2) - 1.0,
                   1.0 - (r * that.rowstep + that.rowstep / 2), 0.0);
            that.setColor(that.colors[state]);
			circle(that.circle_radius / Math.max(that.rows, that.columns));
		}, true);
        if (this.selection) {
	        moveto(this.selection[0] * this.colstep - 1.0,
                   1.0 - (this.selection[1] * this.rowstep), 0.0);
            this.setColor(this.color.selection);
            line(this.colstep, 0, 0);
            line(0, -this.rowstep, 0);
            line(-this.colstep, 0, 0);
            line(0, this.rowstep, 0);
        }
	}
    refresh();
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
        if (!mustDisable)
            return;
        for (var c = 0; c < that.columns; ++c) {
            post('one:', c, that.matrix[row][c], '\n');
            if (c != column && that.matrix[c][row] == before) {
                post('here\n');
                that.matrix[c][row] = after;
                if (output)
                    outlet(0, column, row, after);
            }
        }
    };

    this.selection = [column, row];

    if (this.defer) {
        if (state == Matrix.DISABLED) {
            change(Matrix.ENABLED, Matrix.WILL_BE_DISABLED);
            change(Matrix.CLICKED_FOR_ENABLE, Matrix.DISABLED);
        } else if (state == Matrix.CLICKED_FOR_DISABLE) {
            change(Matrix.WILL_BE_DISABLED, Matrix.ENABLED);
        } else if (state == Matrix.WILL_BE_DISABLED) {
            change(Matrix.CLICKED_FOR_ENABLE, Matrix.DISABLE);
        }
        var newState = Matrix.CLICK_TRANSITION[state];
        this.matrix[column][row] = newState;
        outlet(0, column, row, newState);
    } else {
        state = 1 - state;
	    this.matrix[column][row] = state;
        outlet(0, column, row, state);
        if (state == Matrix.ENABLED)
            change(Matrix.ENABLED, Matrix.DISABLED, true);
    }
	this.draw();
};

Matrix.prototype.output = function(column, row) {
    outlet(0, column, row, this.matrix[column][row]);
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
    this.draw();
};

Matrix.prototype.toggle = function() {
    if (this.selection)
        this.clickSquare(this.selection[0], this.selection[1]);
};

Matrix.prototype.clear = function() {
    this.forEach(Matrix.CLEAR_TRANSITION);
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
