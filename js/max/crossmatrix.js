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
        this.color.about_to_enable,
        this.color.about_to_disable];

    this.matrix = new Array(this.columns);

    for (var c = 0; c < this.columns; ++c)
        this.matrix[c] = new Array(this.rows);
    this.clear();

    this.defer = true;
};

Matrix.prototype.clear = function() {
    for (var c = 0; c < this.columns; ++c)
        for (var r = 0; r < this.rows; ++r)
            this.matrix[c][r] = 0;
};

Matrix.prototype.default_config = {
    rows: 4,
    columns: 4,
    color: {
        background: [1.0, 1.0, 1.0, 0.5],
        disabled: [0.9, 0.9, 0.9, 0.75],
        enabled: [0.0, 0.0, 0.0, 1.0],
        about_to_enable: [1.0, 0.0, 0.0, 1.0],
        about_to_disable: [0.0, 1.0, 0.0, 1.0],
    },
    step_amount: 2.0,
    circle_radius: 0.7
};

Matrix.prototype.draw = function() {
	with (sketch)
	{
		// set how the polygons are rendered
        var vbrgb = this.color.background,
            vfrgb = this.color.enabled,
            vmrgb = this.color.disabled;
		glclearcolor(vbrgb[0], vbrgb[1], vbrgb[2], vbrgb[3]); // set the clear color

		glclear(); // erase the background
		colstep = this.step_amount / this.columns; // how much to move over per column
		rowstep = this.step_amount / this.rows; // how much to move over per row
		for (var i = 0; i < this.columns; i++) // iterate through the columns
		{
			for (var j = 0; j < this.rows; j++) // iterate through the rows
			{
				moveto((i * colstep + colstep / 2) - 1.0,
                       1.0 - (j*rowstep + rowstep / 2), 0.0);
                var color = this.colors[this.matrix[i][j]];
                post('!!!', i, j, this.matrix[i][j], color, '\n');
                glcolor(color[0], color[1], color[2], color[3]);
				circle(this.circle_radius / Math.max(this.rows, this.columns));
			}
		}
	}
    refresh();
};

Matrix.prototype.onclick = function(x, y) {
	var worldx = sketch.screentoworld(x, y)[0];
	var worldy = sketch.screentoworld(x, y)[1];

	var colwidth = 2.0 / this.columns; // width of a column, in world coordinates
	var rowheight = 2.0 / this.rows; // width of a row, in world coordinates

	var column = Math.floor((worldx + 1.0) / colwidth);
	var row = Math.floor((1.0 - worldy) / rowheight);

    var state = this.matrix[column][row];
    if (this.defer) {
        if (state == 0)
            state = 2;
        else if (state == 1)
            state = 3;
        else if (state == 2)
            state = 0;
        else
            state = 1;
        this.matrix[column][row] = state;
        post('!!', column, row, state, '\n');
    } else {
	    this.matrix[column][row] = state ? 0 : 1;
        this.output(column, row);
    }

	this.draw(); // draw and refresh display
};

Matrix.prototype.output = function(column, row) {
    outlet(0, column, row, this.matrix[column][row]);
};

Matrix.prototype.setDefer = function(def) {
    if (this.defer && !def) {
        for (var c = 0; c < this.columns; ++c) {
            for (var r = 0; r < this.rows; ++r) {
                var state = this.matrix[c][r];
                if (state == 2)
                    this.matrix[c][r] = 0;
                else if (state == 3)
                    this.matrix[c][r] = 1;
            }
        }
        this.draw();
    }
    this.defer = def;
};

Matrix.prototype.release = function() {
    if (!this.defer) {
        post('ERROR: not in defer mode\n');
        return;
    }
    for (var c = 0; c < this.columns; ++c) {
        for (var r = 0; r < this.rows; ++r) {
            var state = this.matrix[c][r];
            if (state == 2)
                this.matrix[c][r] = 1;
            else if (state == 3)
                this.matrix[c][r] = 0;
            else
                continue;
            this.output(c, r);
        }
    }
    this.draw();
};

var matrix = new Matrix();

// set up jsui defaults to 2d
sketch.default2d();

// initialize graphics
matrix.draw();

// onresize -- deal with a resized jsui box
function onresize(w, h)
{
	matrix.draw(); // draw and refresh display
};

// onclick -- deal with mouse click event
function onclick(x, y)
{
    matrix.onclick(x, y);
};

// ondblclick -- pass buck to onclick()
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
