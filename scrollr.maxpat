{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 722.0, 104.0, 370.0, 388.0 ],
		"bglocked" : 0,
		"defrect" : [ 722.0, 104.0, 370.0, 388.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"maxclass" : "comment",
					"text" : "Period",
					"presentation_rect" : [ 37.0, 126.0, 77.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-1",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 86.0, 77.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Scrollr",
					"presentation_rect" : [ 125.0, 1.0, 82.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-924",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 215.0, 227.0, 82.0, 20.0 ],
					"presentation" : 1,
					"fontface" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tom Swirly's",
					"presentation_rect" : [ 58.0, 1.0, 81.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-923",
					"fontname" : "Arial Italic",
					"numoutlets" : 0,
					"patching_rect" : [ 148.0, 227.0, 81.0, 20.0 ],
					"presentation" : 1,
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"y's \"",
					"presentation_rect" : [ 48.0, 74.0, 98.0, 28.0 ],
					"numinlets" : 2,
					"id" : "obj-61",
					"fontname" : "Courier",
					"numoutlets" : 1,
					"patching_rect" : [ 186.0, 140.0, 99.0, 28.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ],
					"textcolor" : [ 1.0, 0.0, 0.07451, 1.0 ],
					"fontface" : 1,
					"fontsize" : 24.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "start",
					"numinlets" : 2,
					"id" : "obj-59",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 96.0, 223.0, 35.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "softstep-initialize",
					"numinlets" : 1,
					"id" : "obj-57",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 15.0, 198.0, 100.0, 20.0 ],
					"outlettype" : [ "", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numinlets" : 1,
					"id" : "obj-51",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 15.0, 175.0, 61.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route demo",
					"numinlets" : 1,
					"id" : "obj-24",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 124.0, 65.0, 127.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "tab",
					"presentation_rect" : [ 38.0, 19.0, 219.0, 31.0 ],
					"numinlets" : 1,
					"tabs" : [ "start", "forward", "compile", "demo", "stop", "reverse", "initialize" ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"patching_rect" : [ 25.0, 19.0, 216.0, 34.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "20, 2000 150000",
					"numinlets" : 2,
					"id" : "obj-35",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 124.0, 98.0, 101.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line",
					"numinlets" : 3,
					"id" : "obj-33",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 124.0, 129.0, 47.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 981.0,
					"presentation_rect" : [ 6.0, 3.0, 22.0, 162.0 ],
					"numinlets" : 1,
					"id" : "obj-30",
					"min" : 20.0,
					"numoutlets" : 1,
					"patching_rect" : [ 77.0, 60.0, 17.0, 108.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "period $1",
					"numinlets" : 2,
					"id" : "obj-29",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 124.0, 196.0, 62.0, 18.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"minimum" : 20,
					"presentation_rect" : [ 27.0, 143.0, 51.0, 20.0 ],
					"numinlets" : 1,
					"id" : "obj-25",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 124.0, 173.0, 51.0, 20.0 ],
					"presentation" : 1,
					"outlettype" : [ "int", "bang" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ss device",
					"color" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
					"numinlets" : 4,
					"id" : "obj-17",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patching_rect" : [ 124.0, 320.0, 78.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend display",
					"numinlets" : 1,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 124.0, 284.0, 96.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js scrollr.jso",
					"numinlets" : 1,
					"id" : "obj-2",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patching_rect" : [ 124.0, 249.0, 71.0, 20.0 ],
					"outlettype" : [ "" ],
					"fontsize" : 12.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-33", 0 ],
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
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-2", 0 ],
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
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 133.0, 58.0, 133.5, 58.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 241.5, 224.0, 133.5, 224.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 1 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-61", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
