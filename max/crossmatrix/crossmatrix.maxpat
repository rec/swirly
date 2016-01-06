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
					"id" : "obj-1022",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 501.0, 108.0, 100.0, 18.0 ],
					"text" : "text hello world"
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
							"data" : [ 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 5, "<invalid>", "textedit", "set", "world", 4, "<invalid>", "textedit", "set", 5, "<invalid>", "textedit", "set", "hello", 5, "obj-5", "number", "int", 0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 4, "<invalid>", "textedit", "set", 5, "<invalid>", "textedit", "set", "love", 5, "<invalid>", "textedit", "set", "food", 4, "<invalid>", "textedit", "set", 5, "obj-5", "number", "int", 0 ]
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
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1002",
					"maxclass" : "newobj",
					"numinlets" : 12,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 19.0, 5.0, 100.0, 20.0 ],
					"text" : "funnel 12",
					"varname" : "inputfunnel"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1058",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-0"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1060",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-1"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1062",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-2"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1064",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-3"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1066",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-4"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1068",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-5"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1070",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-6"
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
					"varname" : "output-text-7"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1074",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-8"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1076",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-9"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1078",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-10"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1080",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-11"
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
					"varname" : "output-text-12"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1084",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-13"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1086",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-14"
				}

			}
, 			{
				"box" : 				{
					"border" : 1.0,
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"frgb" : 0.0,
					"id" : "obj-1088",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"varname" : "output-text-15"
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-1089",
					"ignoreclick" : 1,
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 0.0, 0.0, 100.0, 20.0 ],
					"varname" : "p"
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
