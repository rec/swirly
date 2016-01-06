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
		"rect" : [ 139.0, 274.0, 890.0, 563.0 ],
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
					"id" : "obj-282",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 317.101532, 78.0, 50.0, 18.0 ],
					"text" : "remove"
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
					"patching_rect" : [ 235.828506, 78.0, 50.0, 18.0 ],
					"text" : "preset"
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
					"patching_rect" : [ 116.857071, 392.5, 273.314209, 115.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 208.828506, 26.0, 100.0, 40.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 34.0, 50.0, 18.0 ],
					"text" : "compile"
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
					"patching_rect" : [ 98.561615, 34.0, 111.0, 24.0 ]
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
					"patching_rect" : [ 143.795105, 144.0, 539.066772, 248.717621 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.795105, 144.0, 230.066803, 230.717621 ]
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-284",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 147.122482, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-0"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-286",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 162.140137, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-1"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-288",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 177.157791, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-2"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-290",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 192.175446, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-3"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-292",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 207.1931, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-4"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-294",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 222.210754, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-5"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-296",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 237.079727, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-6"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-298",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 251.948685, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-7"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-300",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 266.817657, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-8"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-302",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 281.686615, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-9"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-304",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 296.555573, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-10"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-306",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 311.424561, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-11"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-308",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 326.293518, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-12"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-310",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 341.162476, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-13"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-312",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 356.031433, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-14"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-314",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 370.900421, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-15"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-316",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 147.122482, 14.868965, 14.868965 ],
					"varname" : "output-button-0"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-318",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 147.122482, 100.0, 14.868965 ],
					"varname" : "output-label-0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-319",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 147.122482, 70.0, 20.0 ],
					"text" : "append 0",
					"varname" : "output-append-0"
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
					"patching_rect" : [ 685.0, 162.140137, 14.868965, 14.868965 ],
					"varname" : "output-button-1"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-323",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 162.140137, 100.0, 14.868965 ],
					"varname" : "output-label-1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-324",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 162.140137, 70.0, 20.0 ],
					"text" : "append 1",
					"varname" : "output-append-1"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-326",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 177.157791, 14.868965, 14.868965 ],
					"varname" : "output-button-2"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-328",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 177.157791, 100.0, 14.868965 ],
					"varname" : "output-label-2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-329",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 177.157791, 70.0, 20.0 ],
					"text" : "append 2",
					"varname" : "output-append-2"
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
					"patching_rect" : [ 685.0, 192.175446, 14.868965, 14.868965 ],
					"varname" : "output-button-3"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-333",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 192.175446, 100.0, 14.868965 ],
					"varname" : "output-label-3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-334",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 192.175446, 70.0, 20.0 ],
					"text" : "append 3",
					"varname" : "output-append-3"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-336",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 207.1931, 14.868965, 14.868965 ],
					"varname" : "output-button-4"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-338",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 207.1931, 100.0, 14.868965 ],
					"varname" : "output-label-4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-339",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 207.1931, 70.0, 20.0 ],
					"text" : "append 4",
					"varname" : "output-append-4"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-341",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 222.210754, 14.868965, 14.868965 ],
					"varname" : "output-button-5"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-343",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 222.210754, 100.0, 14.868965 ],
					"varname" : "output-label-5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-344",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 222.210754, 70.0, 20.0 ],
					"text" : "append 5",
					"varname" : "output-append-5"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-346",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 237.079727, 14.868965, 14.868965 ],
					"varname" : "output-button-6"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-348",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 237.079727, 100.0, 14.868965 ],
					"varname" : "output-label-6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-349",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 237.079727, 70.0, 20.0 ],
					"text" : "append 6",
					"varname" : "output-append-6"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-351",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 251.948685, 14.868965, 14.868965 ],
					"varname" : "output-button-7"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-353",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 251.948685, 100.0, 14.868965 ],
					"varname" : "output-label-7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-354",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 251.948685, 70.0, 20.0 ],
					"text" : "append 7",
					"varname" : "output-append-7"
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
					"patching_rect" : [ 685.0, 266.817657, 14.868965, 14.868965 ],
					"varname" : "output-button-8"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-358",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 266.817657, 100.0, 14.868965 ],
					"varname" : "output-label-8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-359",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 266.817657, 70.0, 20.0 ],
					"text" : "append 8",
					"varname" : "output-append-8"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-361",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 281.686615, 14.868965, 14.868965 ],
					"varname" : "output-button-9"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-363",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 281.686615, 100.0, 14.868965 ],
					"varname" : "output-label-9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-364",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 281.686615, 70.0, 20.0 ],
					"text" : "append 9",
					"varname" : "output-append-9"
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
					"patching_rect" : [ 685.0, 296.555573, 14.868965, 14.868965 ],
					"varname" : "output-button-10"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-368",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 296.555573, 100.0, 14.868965 ],
					"varname" : "output-label-10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-369",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 296.555573, 70.0, 20.0 ],
					"text" : "append 10",
					"varname" : "output-append-10"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-371",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 311.424561, 14.868965, 14.868965 ],
					"varname" : "output-button-11"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-373",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 311.424561, 100.0, 14.868965 ],
					"varname" : "output-label-11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-374",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 311.424561, 70.0, 20.0 ],
					"text" : "append 11",
					"varname" : "output-append-11"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-376",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 326.293518, 14.868965, 14.868965 ],
					"varname" : "output-button-12"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-378",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 326.293518, 100.0, 14.868965 ],
					"varname" : "output-label-12"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-379",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 326.293518, 70.0, 20.0 ],
					"text" : "append 12",
					"varname" : "output-append-12"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-381",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 341.162476, 14.868965, 14.868965 ],
					"varname" : "output-button-13"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-383",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 341.162476, 100.0, 14.868965 ],
					"varname" : "output-label-13"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-384",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 341.162476, 70.0, 20.0 ],
					"text" : "append 13",
					"varname" : "output-append-13"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-386",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 356.031433, 14.868965, 14.868965 ],
					"varname" : "output-button-14"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-388",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 356.031433, 100.0, 14.868965 ],
					"varname" : "output-label-14"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-389",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 356.031433, 70.0, 20.0 ],
					"text" : "append 14",
					"varname" : "output-append-14"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-391",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 685.0, 370.900421, 14.868965, 14.868965 ],
					"varname" : "output-button-15"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-393",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 704.868958, 370.900421, 100.0, 14.868965 ],
					"varname" : "output-label-15"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-394",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.868958, 370.900421, 70.0, 20.0 ],
					"text" : "append 15",
					"varname" : "output-append-15"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-396",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 385.769379, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-16"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-398",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 400.638336, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-17"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-400",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 415.507324, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-18"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-402",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 430.376282, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-19"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-404",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 445.245239, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-20"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-406",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 460.114197, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-21"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-408",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 474.983185, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-22"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-410",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 489.852142, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-23"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-412",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 504.7211, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-24"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-414",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 519.590088, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-25"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-416",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 534.459045, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-26"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-418",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 549.328003, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-27"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-420",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 564.19696, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-28"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-422",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 579.065918, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-29"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-424",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 593.934875, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-30"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-426",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 608.803833, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-31"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-428",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 623.672852, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-32"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-430",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 638.541809, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-33"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-432",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 653.410767, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-34"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-434",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 668.279724, 129.131027, 14.868965, 14.868965 ],
					"varname" : "input-button-35"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-282", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-318", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-319", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-324", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-323", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-324", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-329", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-328", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-329", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-334", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-333", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-334", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-339", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-338", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-339", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-344", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-343", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-344", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-349", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-348", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-349", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-354", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-353", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-354", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-359", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-358", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-359", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-364", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-363", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-364", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-369", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-368", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-369", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-374", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-373", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-374", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-379", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-378", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-379", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-384", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-383", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-384", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-389", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-388", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-389", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-394", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-393", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-394", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-170::obj-74" : [ "rslider[3]", "rslider", 0 ],
			"obj-170::obj-75" : [ "0_waveform_multiplier", "0_waveform_multiplier", 0 ]
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
 ]
	}

}
