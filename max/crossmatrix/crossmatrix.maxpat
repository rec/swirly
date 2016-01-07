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
		"rect" : [ 0.0, 44.0, 861.0, 677.0 ],
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
					"id" : "obj-1127",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 363.769989, 134.0, 54.1838, 18.0 ],
					"presentation_rect" : [ 293.074036, 210.0, 0.0, 0.0 ],
					"text" : "store $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1126",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.769989, 196.0, 100.0, 20.0 ],
					"text" : "append name"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"frgb" : 0.0,
					"id" : "obj-1125",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 282.769989, 161.5, 113.0, 23.0 ],
					"varname" : "presetname"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-903",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.561615, 196.0, 50.0, 18.0 ],
					"text" : "10 57"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-783",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 525.989075, 507.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 779.106567, 789.5, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 7,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multisliderg"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-619",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.561615, 115.5, 83.0, 20.0 ],
					"text" : "prepend midi"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-17",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.098389, 507.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 201.214279, 425.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider3"
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
					"patching_rect" : [ 442.098389, 507.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 263.214294, 425.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider4"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-566",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 318.098389, 507.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 139.214279, 425.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider2"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-12",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 256.098389, 507.5, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 77.214279, 425.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.334175, 0.327918, 0.321055, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 201.737701, 50.0, 65.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 411.0, 46.0, 65.0, 19.0 ],
					"text" : "dmxusbpro"
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
					"patching_rect" : [ 86.561615, 86.0, 61.0, 20.0 ],
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
					"patching_rect" : [ 86.561615, 61.0, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.5, 45.0, 42.0, 20.0 ],
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-565",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 356.164673, 218.5, 50.0, 18.0 ],
					"text" : "lfo 1 $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-173",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 309.769989, 134.0, 54.1838, 18.0 ],
					"text" : "recall $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "bpatcher",
					"name" : "tlfo.maxpat",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 501.857056, 121.5, 273.314209, 115.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 282.769989, 86.0, 100.0, 40.0 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 5, "<invalid>", "textedit", "set", "world", 5, "<invalid>", "textedit", "set", "hello", 5, "<invalid>", "number", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 5, "<invalid>", "textedit", "set", "world", 5, "<invalid>", "textedit", "set", "goodbye", 5, "<invalid>", "number", "int", 0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 5, "<invalid>", "number", "int", 0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "bpatcher",
					"name" : "crossmatrix-control.maxpat",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 143.795105, 151.0, 111.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"filename" : "crossmatrix.jso",
					"id" : "obj-1",
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 143.795105, 264.0, 543.319641, 168.459015 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.795105, 144.0, 230.066803, 230.717621 ]
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-137",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 266.754089, 13.114754, 13.114754 ],
					"varname" : "output-button-0[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-144",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 280.0, 13.114754, 13.114754 ],
					"varname" : "output-button-1[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-151",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 293.245911, 13.114754, 13.114754 ],
					"varname" : "output-button-2[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-158",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 306.491821, 13.114754, 13.114754 ],
					"varname" : "output-button-3[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-165",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 319.737701, 13.114754, 13.114754 ],
					"varname" : "output-button-4[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-175",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 332.983612, 13.114754, 13.114754 ],
					"varname" : "output-button-5[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-182",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 346.229492, 13.114754, 13.114754 ],
					"varname" : "output-button-6[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-189",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 359.475403, 13.114754, 13.114754 ],
					"varname" : "output-button-7[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-196",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 372.721313, 13.114754, 13.114754 ],
					"varname" : "output-button-8[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-203",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 385.967224, 13.114754, 13.114754 ],
					"varname" : "output-button-9[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-210",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 399.213104, 13.114754, 13.114754 ],
					"varname" : "output-button-10[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-217",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 412.459015, 13.114754, 13.114754 ],
					"varname" : "output-button-11[1]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-501",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 266.754089, 13.114754, 13.114754 ],
					"varname" : "output-button-0[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-504",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 280.0, 13.114754, 13.114754 ],
					"varname" : "output-button-1[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-508",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 293.245911, 13.114754, 13.114754 ],
					"varname" : "output-button-2[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-512",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 306.491821, 13.114754, 13.114754 ],
					"varname" : "output-button-3[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-515",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 319.737701, 13.114754, 13.114754 ],
					"varname" : "output-button-4[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-518",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 332.983612, 13.114754, 13.114754 ],
					"varname" : "output-button-5[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-521",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 346.229492, 13.114754, 13.114754 ],
					"varname" : "output-button-6[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-524",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 359.475403, 13.114754, 13.114754 ],
					"varname" : "output-button-7[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-527",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 372.721313, 13.114754, 13.114754 ],
					"varname" : "output-button-8[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-530",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 385.967224, 13.114754, 13.114754 ],
					"varname" : "output-button-9[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-533",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 399.213104, 13.114754, 13.114754 ],
					"varname" : "output-button-10[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-536",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 412.459015, 13.114754, 13.114754 ],
					"varname" : "output-button-11[2]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-641",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 266.754089, 13.114754, 13.114754 ],
					"varname" : "output-button-0[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-644",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 280.0, 13.114754, 13.114754 ],
					"varname" : "output-button-1[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-647",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 293.245911, 13.114754, 13.114754 ],
					"varname" : "output-button-2[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-650",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 306.491821, 13.114754, 13.114754 ],
					"varname" : "output-button-3[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-653",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 319.737701, 13.114754, 13.114754 ],
					"varname" : "output-button-4[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-656",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 332.983612, 13.114754, 13.114754 ],
					"varname" : "output-button-5[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-659",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 346.229492, 13.114754, 13.114754 ],
					"varname" : "output-button-6[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-662",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 359.475403, 13.114754, 13.114754 ],
					"varname" : "output-button-7[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-665",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 372.721313, 13.114754, 13.114754 ],
					"varname" : "output-button-8[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-668",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 385.967224, 13.114754, 13.114754 ],
					"varname" : "output-button-9[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-671",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 399.213104, 13.114754, 13.114754 ],
					"varname" : "output-button-10[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-674",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 412.459015, 13.114754, 13.114754 ],
					"varname" : "output-button-11[3]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-772",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 266.754089, 13.114754, 13.114754 ],
					"varname" : "output-button-0[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-321",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 280.0, 13.114754, 13.114754 ],
					"varname" : "output-button-1[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-776",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 293.245911, 13.114754, 13.114754 ],
					"varname" : "output-button-2[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-331",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 306.491821, 13.114754, 13.114754 ],
					"varname" : "output-button-3[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-780",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 319.737701, 13.114754, 13.114754 ],
					"varname" : "output-button-4[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-782",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 332.983612, 13.114754, 13.114754 ],
					"varname" : "output-button-5[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-788",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 346.229492, 13.114754, 13.114754 ],
					"varname" : "output-button-6[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-790",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 359.475403, 13.114754, 13.114754 ],
					"varname" : "output-button-7[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-356",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 372.721313, 13.114754, 13.114754 ],
					"varname" : "output-button-8[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-794",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 385.967224, 13.114754, 13.114754 ],
					"varname" : "output-button-9[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-366",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 399.213104, 13.114754, 13.114754 ],
					"varname" : "output-button-10[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-798",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 674.0, 412.459015, 13.114754, 13.114754 ],
					"varname" : "output-button-11[4]"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-985",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 146.837555, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-0"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-987",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 160.484848, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-1"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-989",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 174.132141, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-2"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-991",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 187.779434, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-3"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-993",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 201.426727, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-4"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-995",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 215.07402, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-5"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-997",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 228.721313, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-6"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-999",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 242.23349, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-7"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1001",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 255.745651, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-8"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1003",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 269.257812, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-9"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1005",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 282.769989, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-10"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1007",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 296.282166, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-11"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1009",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 309.794342, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-12"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1011",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 323.306519, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-13"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1013",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 336.818665, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-14"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1015",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 350.330841, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-15"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1017",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 363.843018, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-16"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1019",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 377.355194, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-17"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1021",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 390.867371, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-18"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1023",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 404.379547, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-19"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1025",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 417.891693, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-20"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1027",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 431.40387, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-21"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1029",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 444.916046, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-22"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1031",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 458.428223, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-23"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1033",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 471.940399, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-24"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1035",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 485.452545, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-25"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1037",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 498.964722, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-26"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1039",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 512.476929, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-27"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1041",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 525.989075, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-28"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1043",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 539.501221, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-29"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1045",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 553.013428, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-30"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1047",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 566.525574, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-31"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1049",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 580.037781, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-32"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1051",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 593.549927, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-33"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1053",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 607.062073, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-34"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1055",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 620.57428, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-35"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1057",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 634.086426, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-36"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1059",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 647.598633, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-37"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1061",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 661.110779, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-38"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1063",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 674.622925, 250.487823, 13.512171, 13.512171 ],
					"varname" : "input-button-39"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1065",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 266.837555, 13.512171, 13.512171 ],
					"varname" : "output-button-0"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1067",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 266.837555, 100.0, 13.512171 ],
					"varname" : "output-label-0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1068",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 266.837555, 70.0, 20.0 ],
					"text" : "append 0",
					"varname" : "output-append-0"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1070",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 280.484863, 13.512171, 13.512171 ],
					"varname" : "output-button-1"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1072",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 280.484863, 100.0, 13.512171 ],
					"varname" : "output-label-1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1073",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 280.484863, 70.0, 20.0 ],
					"text" : "append 1",
					"varname" : "output-append-1"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1075",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 294.132141, 13.512171, 13.512171 ],
					"varname" : "output-button-2"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1077",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 294.132141, 100.0, 13.512171 ],
					"varname" : "output-label-2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1078",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 294.132141, 70.0, 20.0 ],
					"text" : "append 2",
					"varname" : "output-append-2"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1080",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 307.779419, 13.512171, 13.512171 ],
					"varname" : "output-button-3"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1082",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 307.779419, 100.0, 13.512171 ],
					"varname" : "output-label-3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1083",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 307.779419, 70.0, 20.0 ],
					"text" : "append 3",
					"varname" : "output-append-3"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1085",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 321.426727, 13.512171, 13.512171 ],
					"varname" : "output-button-4"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1087",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 321.426727, 100.0, 13.512171 ],
					"varname" : "output-label-4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1088",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 321.426727, 70.0, 20.0 ],
					"text" : "append 4",
					"varname" : "output-append-4"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1090",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 334.938904, 13.512171, 13.512171 ],
					"varname" : "output-button-5"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1092",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 334.938904, 100.0, 13.512171 ],
					"varname" : "output-label-5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1093",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 334.938904, 70.0, 20.0 ],
					"text" : "append 5",
					"varname" : "output-append-5"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1095",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 348.45108, 13.512171, 13.512171 ],
					"varname" : "output-button-6"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1097",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 348.45108, 100.0, 13.512171 ],
					"varname" : "output-label-6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1098",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 348.45108, 70.0, 20.0 ],
					"text" : "append 6",
					"varname" : "output-append-6"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1100",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 361.963226, 13.512171, 13.512171 ],
					"varname" : "output-button-7"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1102",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 361.963226, 100.0, 13.512171 ],
					"varname" : "output-label-7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 361.963226, 70.0, 20.0 ],
					"text" : "append 7",
					"varname" : "output-append-7"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1105",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 375.475403, 13.512171, 13.512171 ],
					"varname" : "output-button-8"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1107",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 375.475403, 100.0, 13.512171 ],
					"varname" : "output-label-8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 375.475403, 70.0, 20.0 ],
					"text" : "append 8",
					"varname" : "output-append-8"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1110",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 388.987579, 13.512171, 13.512171 ],
					"varname" : "output-button-9"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1112",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 388.987579, 100.0, 13.512171 ],
					"varname" : "output-label-9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 388.987579, 70.0, 20.0 ],
					"text" : "append 9",
					"varname" : "output-append-9"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1115",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 402.499756, 13.512171, 13.512171 ],
					"varname" : "output-button-10"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1117",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 402.499756, 100.0, 13.512171 ],
					"varname" : "output-label-10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 402.499756, 70.0, 20.0 ],
					"text" : "append 10",
					"varname" : "output-append-10"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1120",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 690.0, 416.011932, 13.512171, 13.512171 ],
					"varname" : "output-button-11"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1122",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 708.512146, 416.011932, 100.0, 13.512171 ],
					"varname" : "output-label-11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1123",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.512146, 416.011932, 70.0, 20.0 ],
					"text" : "append 11",
					"varname" : "output-append-11"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1068", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1067", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1068", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1073", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1072", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1073", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1078", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1077", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1078", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1083", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1082", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1083", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1088", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1087", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1088", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1093", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1092", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1093", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1098", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1097", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1098", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1103", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1108", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1113", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1112", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1118", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1123", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1123", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1126", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1125", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1127", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-166", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-565", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-619", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-903", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 2 ]
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
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-565", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-619", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-170::obj-75" : [ "0_waveform_multiplier", "0_waveform_multiplier", 0 ],
			"obj-170::obj-74" : [ "rslider[3]", "rslider", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "crossmatrix.jso",
				"bootpath" : "/development/swirly/max/crossmatrix",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "crossmatrix-control.maxpat",
				"bootpath" : "/development/swirly/max/crossmatrix",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "keyrepeat.maxpat",
				"bootpath" : "/development/swirly/max/crossmatrix",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "tlfo.maxpat",
				"bootpath" : "/development/swirly/max/nanolaser",
				"patcherrelativepath" : "../nanolaser",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "BasicLFO.gendsp",
				"bootpath" : "/development/swirly/max/nanolaser",
				"patcherrelativepath" : "../nanolaser",
				"type" : "gDSP",
				"implicit" : 1
			}
, 			{
				"name" : "toDMX.maxpat",
				"bootpath" : "/development/swirly/max/nanolaser",
				"patcherrelativepath" : "../nanolaser",
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
