{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 722.0, 104.0, 987.0, 648.0 ],
		"bglocked" : 0,
		"defrect" : [ 722.0, 104.0, 987.0, 648.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 57.0, 188.0, 22.5, 18.0 ],
					"id" : "obj-41",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 0",
					"outlettype" : [ "int" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 98.0, 279.0, 24.0, 20.0 ],
					"id" : "obj-36",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 500",
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 57.0, 230.0, 65.0, 20.0 ],
					"id" : "obj-38",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle 4",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 57.0, 254.0, 59.5, 20.0 ],
					"id" : "obj-3",
					"numoutlets" : 4,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "standalone off",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 71.0, 339.0, 86.0, 18.0 ],
					"id" : "obj-12",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tether on",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 84.0, 316.0, 58.0, 18.0 ],
					"id" : "obj-15",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "appInitialized",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 57.0, 363.0, 82.0, 18.0 ],
					"id" : "obj-19",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "DON'T CHANGE THAT NUMBER 20 TOO LOW OR YOU MIGHT \"BRICK\" YOUR PEDAL!",
					"linecount" : 4,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 709.0, 246.0, 150.0, 62.0 ],
					"id" : "obj-34",
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"outlettype" : [ "bang", "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 304.0, 469.0, 34.0, 20.0 ],
					"id" : "obj-31",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route demo",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 304.0, 442.0, 71.0, 20.0 ],
					"id" : "obj-24",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "tab",
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 187.0, 392.0, 253.0, 41.0 ],
					"id" : "obj-23",
					"numoutlets" : 3,
					"fontname" : "Arial",
					"tabs" : [ "start", "forward", "compile", "demo", "stop", "reverse", "initialize" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "compile",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 83.0, 33.0, 52.0, 18.0 ],
					"id" : "obj-13",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "start",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 143.0, 15.0, 34.0, 18.0 ],
					"id" : "obj-39",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 607.0, 334.0, 50.0, 20.0 ],
					"id" : "obj-37",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "20, 2000 150000",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 609.0, 277.0, 101.0, 18.0 ],
					"id" : "obj-35",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line",
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0,
					"numinlets" : 3,
					"patching_rect" : [ 609.0, 307.0, 46.0, 20.0 ],
					"id" : "obj-33",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"outlettype" : [ "" ],
					"size" : 981.0,
					"min" : 20.0,
					"numinlets" : 1,
					"patching_rect" : [ 560.0, 238.0, 20.0, 140.0 ],
					"id" : "obj-30",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "period $1",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 604.0, 382.0, 61.0, 18.0 ],
					"id" : "obj-29",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0,
					"minimum" : 20,
					"numinlets" : 1,
					"patching_rect" : [ 551.0, 380.0, 50.0, 20.0 ],
					"id" : "obj-25",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 382.0, 39.0, 60.0, 20.0 ],
					"id" : "obj-1",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ss device",
					"outlettype" : [ "", "" ],
					"color" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
					"fontsize" : 12.0,
					"numinlets" : 4,
					"patching_rect" : [ 57.0, 409.0, 77.0, 20.0 ],
					"id" : "obj-17",
					"numoutlets" : 2,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 194.0, 11.0, 33.0, 18.0 ],
					"id" : "obj-11",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend display",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 174.0, 159.0, 95.0, 20.0 ],
					"id" : "obj-7",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "message \"As far as I know you can scroll a messages as long as you like and special characters like * & ! ?  # % $ ( )\"",
					"linecount" : 2,
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"patching_rect" : [ 705.0, 320.0, 596.0, 32.0 ],
					"id" : "obj-4",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js scroll.jso",
					"outlettype" : [ "" ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 159.0, 62.0, 69.0, 20.0 ],
					"id" : "obj-2",
					"numoutlets" : 1,
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [ 107.5, 307.0, 159.0, 307.0, 159.0, 220.0, 66.5, 220.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 3 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
