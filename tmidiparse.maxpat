{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 560.0, 451.0, 302.0, 302.0 ],
		"bglocked" : 0,
		"defrect" : [ 560.0, 451.0, 302.0, 302.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "splitter pc",
					"linecount" : 2,
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 142.0, 131.0, 48.0, 34.0 ],
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "splitter cc",
					"linecount" : 2,
					"id" : "obj-9",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 98.0, 131.0, 47.0, 34.0 ],
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "splitter note",
					"linecount" : 2,
					"id" : "obj-7",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 12.0, 131.0, 47.0, 34.0 ],
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hint" : "note, cc, pc",
					"id" : "obj-16",
					"numinlets" : 0,
					"patching_rect" : [ 39.0, 6.0, 23.0, 23.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route note cc pc",
					"id" : "obj-15",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 35.0, 105.0, 20.0 ],
					"numoutlets" : 4,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-13",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 264.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "note, cc, pc output",
					"id" : "obj-11",
					"numinlets" : 1,
					"patching_rect" : [ 126.0, 189.0, 21.0, 21.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiformat",
					"id" : "obj-4",
					"fontname" : "Arial",
					"numinlets" : 7,
					"patching_rect" : [ 12.0, 234.0, 278.0, 20.0 ],
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiparse",
					"id" : "obj-2",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 99.0, 278.0, 20.0 ],
					"numoutlets" : 7,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "", "int", "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiin",
					"id" : "obj-1",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 75.0, 42.0, 20.0 ],
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "int" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 5 ],
					"destination" : [ "obj-4", 5 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 4 ],
					"destination" : [ "obj-4", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 6 ],
					"destination" : [ "obj-4", 6 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 3 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 134.5, 64.5, 21.5, 64.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-4", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 3 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 2 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
