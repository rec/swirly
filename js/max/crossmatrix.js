// mymatrix.js
//
// simulates a simple grid of clickable widgets (a la matrixctrl)
//
// rld, 5.04
//

// inlets and outlets
inlets = 1;
outlets = 1;
autowatch = 1;

function Matrix(config) {
    config = config || this.default_config;

    for (var name in config)
        this[name] = config[name];

    this.state = new Array(this.columns);

    for (var c = 0; c < this.columns; ++c)
        this.state[c] = new Array(this.rows);
};

Matrix.prototype.clear = function() {
    for (var c = 0; c < this.columns; ++c)
        for (var r = 0; r < this.rows; ++r)
            this.state[c][r] = 0;
};

Matrix.prototype.default_config = {
    rows: 4,
    columns: 4,
    color: {
        background: [0.8, 1.0, 0.8, 0.5],
        disabled: [0.9, 0.5, 0.5, 0.75],
        enabled: [1.0, 0.0, 0.2, 1.0]
    }
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
		colstep = 2.0 / this.columns; // how much to move over per column
		rowstep = 2.0 / this.rows; // how much to move over per row
		for (var i = 0; i < this.columns; i++) // iterate through the columns
		{
			for (var j = 0; j < this.rows; j++) // iterate through the rows
			{
				moveto((i*colstep + colstep/2)-1.0,
                       1.0 - (j*rowstep + rowstep/2), 0.); // move the drawing point
				if (this.state[i][j]) // set 'on' color
					glcolor(vfrgb[0], vfrgb[1], vfrgb[2], vfrgb[3]);
				else // set 'off' color (midway between vbrgb and vfrgb)
					glcolor(vmrgb[0], vmrgb[1], vmrgb[2], vmrgb[3]);
				circle(0.7 / Math.max(this.rows, this.columns)); // draw the circle
			}
		}
	}
    refresh();
};

var matrix = new Matrix();

// set up jsui defaults to 2d
sketch.default2d();

// initialize graphics
matrix.draw();

function bang() {
    matrix.draw();
};

// rows -- change number of rows in jsui
function rows(val)
{
	if (arguments.length)
	{
		matrix.rows = arguments[0];
		matrix.draw(); // draw and refresh display
	}
};


// cols -- change number of columns is jsui
function cols(val)
{
	if (arguments.length)
	{
		matrix.columns = arguments[0];
		matrix.draw(); // draw and refresh display
	}
};

// list -- update our state to respond to a change from Max
function list(v)
{
	if (arguments.length == 3) // bail if incorrect number of arguments
	{
		matrix.state[arguments[0]][arguments[1]] = arguments[2]; // update our internal state based on the list
		outlet(0, arguments[0], arguments[1], arguments[2]); // echo the list out the outlet
	}
	matrix.draw(); // draw and refresh display
};

// clear -- wipe the state clean
function clear()
{
	for (var i = 0; i < matrix.columns; i++)
		for (var j = 0; j < matrix.rows; j++)
			matrix.state[i][j] = 0; // wipe the state
	outlet(0, "clear"); // clear the router or matrix~ downstream
	matrix.draw(); // draw and refresh display
};

// frgb -- change foreground (clicked) sphere color
function frgb(r,g,b)
{
	vfrgb[0] = r / 255.;
	vfrgb[1] = g / 255.;
	vfrgb[2] = b / 255.;
	vmrgb[0] = 0.5 * (vfrgb[0] + vbrgb[0]);
	vmrgb[1] = 0.5 * (vfrgb[1] + vbrgb[1]);
	vmrgb[2] = 0.5 * (vfrgb[2] + vbrgb[2]);
	matrix.draw(); // draw and refresh display
};

// brgb -- change background color
function brgb(r,g,b)
{
	vbrgb[0] = r / 255.;
	vbrgb[1] = g / 255.;
	vbrgb[2] = b / 255.;
	vmrgb[0] = 0.5 * (vfrgb[0] + vbrgb[0]);
	vmrgb[1] = 0.5 * (vfrgb[1] + vbrgb[1]);
	vmrgb[2] = 0.5 * (vfrgb[2] + vbrgb[2]);
	matrix.draw(); // draw and refresh display
};

// onresize -- deal with a resized jsui box
function onresize(w,h)
{
	matrix.draw(); // draw and refresh display
};

// onclick -- deal with mouse click event
function onclick(x,y)
{
	var worldx = sketch.screentoworld(x, y)[0];
	var worldy = sketch.screentoworld(x, y)[1];

	var colwidth = 2. / matrix.columns; // width of a column, in world coordinates
	var rowheight = 2. / matrix.rows; // width of a row, in world coordinates

	var x_click = Math.floor((worldx + 1.0) / colwidth); // which column we clicked
	var y_click = Math.floor((1.0 - worldy) / rowheight); // which row we clicked

	matrix.state[x_click][y_click] = !matrix.state[x_click][y_click]; // flip the state of the clicked point
	outlet(0, x_click, y_click, matrix.state[x_click][y_click]); // output the coordinates and state of the clicked point

	matrix.draw(); // draw and refresh display
};

// ondblclick -- pass buck to onclick()
function ondblclick(x, y)
{
	onclick(x, y);
};

onclick.local = 1; // make function private to prevent triggering from Max
ondblclick.local = 1; // make function private to prevent triggering from Max
onresize.local = 1; // make function private to prevent triggering from Max
