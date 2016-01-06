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
		"rect" : [ 41.0, 475.0, 890.0, 563.0 ],
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
					"id" : "obj-1212",
					"linecount" : 5,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 416.0, 50.0, 72.0 ],
					"text" : "text three hundred and two"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1003",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 657.0, 146.975967, 100.0, 20.0 ],
					"text" : "prepend"
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
					"patching_rect" : [ 615.0, 274.800995, 302.0, 129.0 ]
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
							"data" : [ 4, "obj-1373", "textedit", "set", 4, "obj-1368", "textedit", "set", 4, "obj-1363", "textedit", "set", 4, "obj-1358", "textedit", "set", 4, "obj-1353", "textedit", "set", 4, "obj-1348", "textedit", "set", 4, "obj-1343", "textedit", "set", 4, "obj-1338", "textedit", "set", 4, "obj-1333", "textedit", "set", 4, "obj-1328", "textedit", "set", 4, "obj-1323", "textedit", "set", 4, "obj-1318", "textedit", "set", 4, "obj-1313", "textedit", "set", 4, "obj-1308", "textedit", "set", 5, "obj-1303", "textedit", "set", "world", 5, "obj-1298", "textedit", "set", "hello", 5, "obj-5", "number", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 4, "obj-1373", "textedit", "set", 4, "obj-1368", "textedit", "set", 4, "obj-1363", "textedit", "set", 4, "obj-1358", "textedit", "set", 4, "obj-1353", "textedit", "set", 4, "obj-1348", "textedit", "set", 4, "obj-1343", "textedit", "set", 4, "obj-1338", "textedit", "set", 4, "obj-1333", "textedit", "set", 4, "obj-1328", "textedit", "set", 4, "obj-1323", "textedit", "set", 4, "obj-1318", "textedit", "set", 4, "obj-1313", "textedit", "set", 4, "obj-1308", "textedit", "set", 5, "obj-1303", "textedit", "set", "world", 5, "obj-1298", "textedit", "set", "goodbye", 5, "obj-5", "number", "int", 0 ]
						}
, 						{
							"number" : 11,
							"data" : [ 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "obj-1328", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "obj-1298", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 5, "obj-5", "number", "int", 0 ]
						}
 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-732",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 635.0, 448.0, 50.0, 18.0 ],
					"text" : "\"0\" \"15\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 26.0, 67.0, 50.0, 20.0 ]
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
					"jsarguments" : [ 16, 16 ],
					"maxclass" : "jsui",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 143.795105, 144.0, 230.066803, 230.717621 ]
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1264",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 146.975967, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-0"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1266",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 161.288971, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-1"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1268",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 175.601974, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-2"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1270",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 189.914978, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-3"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1272",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 204.086258, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-4"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1274",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 218.257553, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-5"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1276",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 232.428833, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-6"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1278",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 246.600128, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-7"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1280",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 260.771423, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-8"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1282",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 274.942688, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-9"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1284",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 289.113983, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-10"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1286",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 303.285278, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-11"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1288",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 317.456573, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-12"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1290",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 331.627838, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-13"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1292",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 345.799133, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-14"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 0.5, 1.0, 0.0, 1.0 ],
					"id" : "obj-1294",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.0, 0.5, 0.0, 1.0 ],
					"patching_rect" : [ 359.970428, 129.828705, 14.171288, 14.171288 ],
					"varname" : "input-button-15"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1296",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 146.975967, 14.171288, 14.171288 ],
					"varname" : "output-button-0"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1298",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 146.975967, 65.0, 14.171288 ],
					"text" : "goodbye",
					"varname" : "output-label-0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1299",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 146.975967, 65.0, 20.0 ],
					"text" : "append 0",
					"varname" : "output-append-0"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1301",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 161.288971, 14.171288, 14.171288 ],
					"varname" : "output-button-1"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1303",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 161.288971, 65.0, 14.171288 ],
					"text" : "world",
					"varname" : "output-label-1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1304",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 161.288971, 65.0, 20.0 ],
					"text" : "append 1",
					"varname" : "output-append-1"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1306",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 175.601974, 14.171288, 14.171288 ],
					"varname" : "output-button-2"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1308",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 175.601974, 65.0, 14.171288 ],
					"varname" : "output-label-2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1309",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 175.601974, 65.0, 20.0 ],
					"text" : "append 2",
					"varname" : "output-append-2"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1311",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 189.773254, 14.171288, 14.171288 ],
					"varname" : "output-button-3"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1313",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 189.773254, 65.0, 14.171288 ],
					"varname" : "output-label-3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1314",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 189.773254, 65.0, 20.0 ],
					"text" : "append 3",
					"varname" : "output-append-3"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1316",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 203.94455, 14.171288, 14.171288 ],
					"varname" : "output-button-4"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1318",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 203.94455, 65.0, 14.171288 ],
					"varname" : "output-label-4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1319",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 203.94455, 65.0, 20.0 ],
					"text" : "append 4",
					"varname" : "output-append-4"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1321",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 218.115829, 14.171288, 14.171288 ],
					"varname" : "output-button-5"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1323",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 218.115829, 65.0, 14.171288 ],
					"varname" : "output-label-5"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1324",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 218.115829, 65.0, 20.0 ],
					"text" : "append 5",
					"varname" : "output-append-5"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1326",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 232.287125, 14.171288, 14.171288 ],
					"varname" : "output-button-6"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1328",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 232.287125, 65.0, 14.171288 ],
					"varname" : "output-label-6"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1329",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 232.287125, 65.0, 20.0 ],
					"text" : "append 6",
					"varname" : "output-append-6"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1331",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 246.458405, 14.171288, 14.171288 ],
					"varname" : "output-button-7"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1333",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 246.458405, 65.0, 14.171288 ],
					"varname" : "output-label-7"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1334",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 246.458405, 65.0, 20.0 ],
					"text" : "append 7",
					"varname" : "output-append-7"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1336",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 260.6297, 14.171288, 14.171288 ],
					"varname" : "output-button-8"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1338",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 260.6297, 65.0, 14.171288 ],
					"varname" : "output-label-8"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1339",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 260.6297, 65.0, 20.0 ],
					"text" : "append 8",
					"varname" : "output-append-8"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1341",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 274.800995, 14.171288, 14.171288 ],
					"varname" : "output-button-9"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1343",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 274.800995, 65.0, 14.171288 ],
					"varname" : "output-label-9"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1344",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 274.800995, 65.0, 20.0 ],
					"text" : "append 9",
					"varname" : "output-append-9"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1346",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 288.97226, 14.171288, 14.171288 ],
					"varname" : "output-button-10"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1348",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 288.97226, 65.0, 14.171288 ],
					"varname" : "output-label-10"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1349",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 288.97226, 65.0, 20.0 ],
					"text" : "append 10",
					"varname" : "output-append-10"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1351",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 303.143555, 14.171288, 14.171288 ],
					"varname" : "output-button-11"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1353",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 303.143555, 65.0, 14.171288 ],
					"varname" : "output-label-11"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1354",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 303.143555, 65.0, 20.0 ],
					"text" : "append 11",
					"varname" : "output-append-11"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1356",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 317.31485, 14.171288, 14.171288 ],
					"varname" : "output-button-12"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1358",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 317.31485, 65.0, 14.171288 ],
					"varname" : "output-label-12"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1359",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 317.31485, 65.0, 20.0 ],
					"text" : "append 12",
					"varname" : "output-append-12"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1361",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 331.486145, 14.171288, 14.171288 ],
					"varname" : "output-button-13"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1363",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 331.486145, 65.0, 14.171288 ],
					"varname" : "output-label-13"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1364",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 331.486145, 65.0, 20.0 ],
					"text" : "append 13",
					"varname" : "output-append-13"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1366",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 345.65741, 14.171288, 14.171288 ],
					"varname" : "output-button-14"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1368",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 345.65741, 65.0, 14.171288 ],
					"varname" : "output-label-14"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1369",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 345.65741, 65.0, 20.0 ],
					"text" : "append 14",
					"varname" : "output-append-14"
				}

			}
, 			{
				"box" : 				{
					"blinkcolor" : [ 1.0, 0.5, 0.0, 1.0 ],
					"id" : "obj-1371",
					"ignoreclick" : 1,
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.5, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 376.0, 359.828705, 14.171288, 14.171288 ],
					"varname" : "output-button-15"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1373",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 395.171295, 359.828705, 65.0, 14.171288 ],
					"varname" : "output-label-15"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1374",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.171295, 359.828705, 65.0, 20.0 ],
					"text" : "append 15",
					"varname" : "output-append-15"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1299", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1304", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1303", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1304", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1309", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1308", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1309", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1314", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1313", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1314", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1319", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1318", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1319", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1324", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1323", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1324", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1329", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1328", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1329", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1334", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1333", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1334", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1339", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1338", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1339", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1344", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1343", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1344", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1349", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1348", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1349", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1354", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1353", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1354", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1359", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1358", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1359", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1364", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1363", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1364", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1369", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1368", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1369", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1374", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1373", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 1,
					"source" : [ "obj-1374", 0 ]
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
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
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
 ]
	}

}
