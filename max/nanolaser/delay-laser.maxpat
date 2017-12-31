{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x86"
		}
,
		"rect" : [ 130.0, 914.0, 1090.0, 880.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patching_rect" : [ 570.0, 277.0, 333.0, 20.0 ],
					"text" : "route display1 display2 display3 display4 display5 display6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 484.0, 232.0, 109.0, 20.0 ],
					"text" : "route color pattern"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patching_rect" : [ 40.5, 223.0, 402.142761, 20.0 ],
					"text" : "route zoom xrot yrot zrot hpos vpos"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 122.0, 150.0, 50.0, 18.0 ],
					"text" : "compile"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 461.952362, 111.0, 100.0, 20.0 ],
					"text" : "t l",
					"varname" : "ccout"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 426.285706, 143.0, 126.0, 20.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "bpatcher",
					"name" : "name-slider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 25.532715, 540.5, 159.967285, 235.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 440.25, 367.5, 163.254089, 203.0 ],
					"varname" : "color"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "name-slider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.738586, 547.5, 161.967285, 228.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 616.25, 367.5, 163.254089, 203.0 ],
					"varname" : "pattern"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "bpatcher",
					"name" : "dslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 359.785645, 297.0, 57.967285, 207.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 366.175537, 369.0, 50.299805, 218.0 ],
					"varname" : "vpos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "bpatcher",
					"name" : "dslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 296.071411, 297.0, 57.967285, 207.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 302.461304, 369.0, 50.299805, 218.0 ],
					"varname" : "hpos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "bpatcher",
					"name" : "dslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 232.357117, 297.0, 57.967285, 207.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 238.747009, 369.0, 50.299805, 218.0 ],
					"varname" : "zrot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "bpatcher",
					"name" : "dslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 168.642822, 297.0, 57.967285, 207.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 175.032715, 369.0, 50.299805, 218.0 ],
					"varname" : "yrot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "bpatcher",
					"name" : "dslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 104.928589, 297.0, 57.967285, 207.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 111.318481, 369.0, 50.299805, 218.0 ],
					"varname" : "xrot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "bpatcher",
					"name" : "dslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 41.214279, 297.0, 57.967285, 207.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 47.604187, 369.0, 50.299805, 218.0 ],
					"varname" : "zoom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-169",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 250.0, 520.5, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 441.25, 349.0, 48.0, 20.0 ],
					"text" : "Color"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-168",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 362.071411, 277.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 368.475342, 349.0, 48.0, 20.0 ],
					"text" : "V Pos"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-167",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 298.357147, 277.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.044434, 349.0, 48.0, 20.0 ],
					"text" : "H Pos"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-166",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 234.642853, 277.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 243.613525, 349.0, 48.0, 20.0 ],
					"text" : "Z Rot"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-165",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.928589, 277.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 181.182617, 349.0, 48.0, 20.0 ],
					"text" : "Y Rot"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-164",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.214294, 277.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.751709, 349.0, 48.0, 20.0 ],
					"text" : "X Rot"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-163",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 43.5, 277.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 56.320801, 349.0, 48.0, 20.0 ],
					"text" : "Zoom"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-160",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 71.5, 520.5, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 616.25, 349.0, 48.0, 20.0 ],
					"text" : "Pattern"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 276.222229, 90.0, 55.0, 21.0 ],
					"text" : "midiinfo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-13",
					"items" : [ "AU DLS Synth 1", ",", "IAC Driver Bus 1", ",", "from Max 1", ",", "from Max 2" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 276.222229, 111.0, 150.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 805.5, 67.5, 150.0, 19.0 ],
					"varname" : "midiin[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.222229, 56.0, 77.0, 21.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 341.722229, 180.0, 68.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 815.5, 93.5, 89.0, 20.0 ],
					"text" : "midiout",
					"varname" : "midiout"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"bgoncolor" : [ 0.010066, 1.0, 0.0, 1.0 ],
					"bgoveroncolor" : [ 0.862745, 0.396218, 0.157722, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"id" : "obj-2",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 639.222229, 150.0, 115.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 545.294434, 145.5, 109.5, 44.0 ],
					"rounded" : 0.0,
					"text" : "ALL OFF!",
					"texton" : "on",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "alloff"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "laser-display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 532.0, 422.0, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 52.0, 138.0, 126.0 ],
					"varname" : "display1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 17 ],
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "laser-display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 678.0, 422.0, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 52.0, 138.0, 126.0 ],
					"varname" : "display2"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 33 ],
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "laser-display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 828.0, 422.0, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 355.0, 52.0, 138.0, 126.0 ],
					"varname" : "display3"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 49 ],
					"id" : "obj-34",
					"maxclass" : "bpatcher",
					"name" : "laser-display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 532.0, 554.5, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 61.0, 184.5, 138.0, 126.0 ],
					"varname" : "display4"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 65 ],
					"id" : "obj-35",
					"maxclass" : "bpatcher",
					"name" : "laser-display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 684.0, 554.5, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 184.5, 138.0, 126.0 ],
					"varname" : "display5"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 81 ],
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "laser-display.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 834.0, 554.5, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 361.0, 184.5, 138.0, 126.0 ],
					"varname" : "display6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 697.0, 763.5, 100.0, 20.0 ],
					"text" : "dmxusbpro",
					"varname" : "dmxusbpro"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 36.0, 150.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.5, 124.0, 50.0, 18.0 ],
					"text" : "49 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.5, 38.0, 55.0, 21.0 ],
					"text" : "midiinfo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-99",
					"items" : [ "IAC Driver Bus 1", ",", "to Max 1", ",", "to Max 2" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 57.5, 59.0, 150.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 617.5, 67.5, 150.0, 19.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.5, 11.0, 136.0, 21.0 ],
					"text" : "loadmess controllers"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "int", "int", "int", "int" ],
					"patching_rect" : [ 57.5, 115.0, 61.0, 20.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 57.5, 88.0, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 661.5, 93.5, 42.0, 20.0 ],
					"text" : "midiin",
					"varname" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 71.5, 181.0, 126.0, 20.0 ],
					"saved_object_attributes" : 					{
						"filename" : "delay-laser.jso",
						"parameter_enable" : 0
					}
,
					"text" : "js delay-laser.jso"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 538.5, 279.0, 440.0, 279.0, 440.0, 516.0, 232.238586, 516.0 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 493.5, 264.0, 426.0, 264.0, 426.0, 264.0, 27.0, 264.0, 27.0, 525.0, 35.032715, 525.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-9", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-99", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "delay-laser.jso",
				"bootpath" : "/development/swirly/max/nanolaser",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "laser-display.maxpat",
				"bootpath" : "/development/swirly/max/nanolaser",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dslider.maxpat",
				"bootpath" : "/development/swirly/max/nanolaser",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "name-slider.maxpat",
				"bootpath" : "/development/swirly/max/nanolaser",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "dmxusbpro.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
