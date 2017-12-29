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
		"rect" : [ 86.0, 389.0, 1326.0, 1087.0 ],
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
					"args" : [ 1 ],
					"id" : "obj-31",
					"maxclass" : "bpatcher",
					"name" : "laser-dmx.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 299.0, 459.0, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 59.0, 52.0, 138.0, 126.0 ],
					"varname" : "delay-1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 17 ],
					"id" : "obj-32",
					"maxclass" : "bpatcher",
					"name" : "laser-dmx.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 445.0, 459.0, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 205.0, 52.0, 138.0, 126.0 ],
					"varname" : "delay-2"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 33 ],
					"id" : "obj-33",
					"maxclass" : "bpatcher",
					"name" : "laser-dmx.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 595.0, 459.0, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 355.0, 52.0, 138.0, 126.0 ],
					"varname" : "delay-3"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 49 ],
					"id" : "obj-34",
					"maxclass" : "bpatcher",
					"name" : "laser-dmx.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 299.0, 591.5, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 61.0, 184.5, 138.0, 126.0 ],
					"varname" : "delay-4"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 65 ],
					"id" : "obj-35",
					"maxclass" : "bpatcher",
					"name" : "laser-dmx.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 591.5, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 211.0, 184.5, 138.0, 126.0 ],
					"varname" : "delay-5"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 81 ],
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "laser-dmx.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 601.0, 591.5, 138.0, 126.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 361.0, 184.5, 138.0, 126.0 ],
					"varname" : "delay-6"
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
					"patching_rect" : [ 464.0, 800.5, 100.0, 20.0 ],
					"text" : "dmxusbpro"
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
					"bgoncolor" : [ 1.0, 0.967822, 0.0, 1.0 ],
					"bgoveroncolor" : [ 0.862745, 0.000066, 0.473177, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 866.222229, 351.0, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 394.222229, 509.0, 63.0, 44.0 ],
					"rounded" : 100.0,
					"text" : "snapshot",
					"texton" : "snapshot",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "flash[1]"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 1.0, 0.0, 0.590925, 1.0 ],
					"bgoveroncolor" : [ 0.862745, 0.000066, 0.473177, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 956.222229, 351.0, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 324.222229, 509.0, 51.0, 44.0 ],
					"rounded" : 100.0,
					"text" : "flash",
					"texton" : "flash",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "flash"
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
					"patching_rect" : [ 107.5, 192.0, 50.0, 18.0 ],
					"text" : "41 0"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.596932, 0.817402, 1.0, 1.0 ],
					"bgoveroncolor" : [ 0.862745, 0.396218, 0.157722, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 787.222229, 350.0, 65.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.5, 509.0, 51.0, 44.0 ],
					"rounded" : 100.0,
					"text" : "stopped",
					"texton" : "running",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[16]"
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
					"presentation_rect" : [ 10.5, 15.0, 150.0, 19.0 ],
					"varname" : "midiin"
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
					"patching_rect" : [ 93.5, 10.0, 77.0, 21.0 ],
					"text" : "loadmess 0"
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
					"presentation_rect" : [ 166.5, 15.0, 42.0, 20.0 ],
					"text" : "midiin"
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
					"patching_rect" : [ 130.0, 785.0, 126.0, 20.0 ],
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
					"destination" : [ "obj-98", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
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
				"name" : "laser-dmx.maxpat",
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
