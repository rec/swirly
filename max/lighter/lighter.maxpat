{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x64"
		}
,
		"rect" : [ 50.0, 60.0, 878.0, 628.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"htabcolor" : [ 0.57273, 0.770166, 1.0, 1.0 ],
					"id" : "obj-17",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 408.539703, 241.0, 84.0, 20.0 ],
					"tabcolor" : [ 0.92697, 0.92697, 0.92697, 1.0 ],
					"tabs" : [ "play", "test" ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 253.56192, 217.0, 47.0, 20.0 ],
					"text" : "midiin",
					"varname" : "bfc_in"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "int", "int", "int", "int" ],
					"patching_rect" : [ 253.56192, 241.0, 64.333344, 20.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.5, 352.0, 206.0, 20.0 ],
					"text" : "loadmess 'UltraLite mk3 MIDI Port'"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 58.873016, 154.0, 47.0, 20.0 ],
					"text" : "midiin",
					"varname" : "wx_in"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-7",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 672.422241, 23.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 647.422241, 202.5, 52.0, 44.451611 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "laser_5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"id" : "obj-16",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.422302, 436.0, 189.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.214294, 40.0, 127.0, 31.0 ],
					"textcolor" : [ 1.0, 0.011789, 0.0, 1.0 ],
					"varname" : "error"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 512.5, 49.0, 20.0 ],
					"text" : "midiout",
					"varname" : "wx_out"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 144.373016, 450.0, 34.0, 18.0 ],
					"text" : "0 $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 94.373016, 424.5, 69.0, 20.0 ],
					"text" : "unpack 0 0",
					"varname" : "wx_bank_pc"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 26.0, 482.0, 155.746033, 20.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"id" : "obj-49",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.422302, 403.5, 189.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 40.0, 116.0, 31.0 ],
					"varname" : "sequence"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"id" : "obj-48",
					"ignoreclick" : 1,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.422302, 346.5, 165.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 3.0, 243.0, 31.0 ],
					"text" : "effect",
					"varname" : "mapper"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-6",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 548.422241, 23.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.214294, 120.5, 52.0, 44.451611 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "laser_3"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-18",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 610.422241, 23.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 175.214294, 120.5, 52.0, 44.451611 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "laser_4"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-9",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 486.422241, 23.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 175.214294, 77.0, 52.0, 44.451611 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "laser_2"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-10",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 424.422241, 23.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 124.214294, 77.0, 52.0, 44.451611 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "laser_1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 147.739685, 243.5, 70.0, 20.0 ],
					"text" : "dmxusbpro",
					"varname" : "dmx"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 76.806351, 243.5, 52.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 232.0, 146.951614, 52.0, 18.0 ],
					"text" : "compile"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.806351, 217.0, 114.0, 20.0 ],
					"text" : "if $i1 == 2 then $i2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Chalkduster",
					"fontsize" : 18.0,
					"frgb" : 0.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 35.0, 16.951599, 82.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 234.0, 84.725807, 85.0, 29.0 ],
					"text" : "lighter"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "int", "int", "int", "int" ],
					"patching_rect" : [ 58.873016, 185.0, 154.333344, 20.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 58.873016, 272.5, 368.666687, 20.0 ],
					"saved_object_attributes" : 					{
						"filename" : "lighter.jso",
						"parameter_enable" : 0
					}
,
					"text" : "js lighter.jso"
				}

			}
, 			{
				"box" : 				{
					"bordercolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"candycane" : 7,
					"id" : "obj-20",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 754.944458, 23.5, 100.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.0, 122.951614, 106.0, 42.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"settype" : 0,
					"size" : 7,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "headlight"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-21", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-63", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 2 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "lighter.jso",
				"bootpath" : "/development/swirly/max/lighter",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "dmxusbpro.mxo",
				"type" : "iLaX"
			}
 ]
	}

}
