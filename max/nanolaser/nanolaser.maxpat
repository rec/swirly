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
		"rect" : [ 262.0, 140.0, 1178.0, 768.0 ],
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
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 42.0, 177.0, 20.0, 20.0 ]
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
					"presentation_rect" : [ 413.222229, 321.0, 63.0, 44.0 ],
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
					"presentation_rect" : [ 343.222229, 321.0, 51.0, 44.0 ],
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
					"patching_rect" : [ 89.0, 192.0, 50.0, 18.0 ],
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
					"presentation_rect" : [ 278.5, 321.0, 51.0, 44.0 ],
					"rounded" : 100.0,
					"text" : "stopped",
					"texton" : "running",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[16]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "bpatcher",
					"name" : "nslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.516357, 347.0, 53.967285, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.516357, 134.0, 53.967285, 176.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "bpatcher",
					"name" : "nslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.785675, 347.0, 53.967285, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 465.785675, 134.0, 53.967285, 176.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "bpatcher",
					"name" : "ndial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 507.785706, 251.0, 44.0, 79.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 470.785706, 48.0, 44.0, 79.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "bpatcher",
					"name" : "nslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 441.071411, 347.0, 53.967285, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 402.071411, 134.0, 53.967285, 176.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "bpatcher",
					"name" : "ndial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 444.071442, 251.0, 44.0, 79.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 407.071442, 48.0, 44.0, 79.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "bpatcher",
					"name" : "nslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 377.357117, 347.0, 53.967285, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 338.357117, 134.0, 53.967285, 176.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "bpatcher",
					"name" : "ndial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.357147, 251.0, 44.0, 79.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 343.357147, 48.0, 44.0, 79.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "bpatcher",
					"name" : "nslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 313.642822, 347.0, 53.967285, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 274.642822, 134.0, 53.967285, 176.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "bpatcher",
					"name" : "ndial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 316.642853, 251.0, 44.0, 79.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 279.642853, 48.0, 44.0, 79.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "bpatcher",
					"name" : "nslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.928574, 347.0, 53.967285, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 210.928574, 134.0, 53.967285, 176.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "bpatcher",
					"name" : "ndial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 252.928574, 251.0, 44.0, 79.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 215.928574, 48.0, 44.0, 79.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "bpatcher",
					"name" : "nslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 186.214279, 347.0, 53.967285, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 147.214279, 134.0, 53.967285, 176.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "bpatcher",
					"name" : "ndial.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 189.214279, 251.0, 44.0, 79.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 152.214279, 48.0, 44.0, 79.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "bpatcher",
					"name" : "nslider.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 122.0, 347.0, 53.967285, 176.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 83.0, 134.0, 53.967285, 176.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 13,
					"numoutlets" : 13,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 637.0, 310.0, 238.0, 20.0 ],
					"text" : "route 20 21 22 23 24 25 26 27 41 43 44 45"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 46,
					"numoutlets" : 1,
					"outlettype" : [ "list" ],
					"patching_rect" : [ 62.0, 586.0, 999.5, 20.0 ],
					"text" : "funnel 46"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 281.0, 174.0, 154.0, 20.0 ],
					"text" : "route 11 12 13 14 15 16 17"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 451.0, 201.5, 127.0, 20.0 ],
					"text" : "route 1 2 3 4 5 6 7 0"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.294444, 1.0, 0.190988, 1.0 ],
					"bgoveroncolor" : [ 0.291775, 0.862135, 0.029122, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-181",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 760.168213, 350.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 208.0, 333.0, 20.0, 20.0 ],
					"rounded" : 30.0,
					"text" : "d",
					"texton" : "E",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[7]"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.294444, 1.0, 0.190988, 1.0 ],
					"bgoveroncolor" : [ 0.291775, 0.862135, 0.029122, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-180",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 742.68457, 351.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 188.0, 333.0, 20.0, 20.0 ],
					"rounded" : 30.0,
					"text" : "d",
					"texton" : "E",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[6]"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.294444, 1.0, 0.190988, 1.0 ],
					"bgoveroncolor" : [ 0.291775, 0.862135, 0.029122, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-179",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 725.200989, 349.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 168.0, 333.0, 20.0, 20.0 ],
					"rounded" : 30.0,
					"text" : "d",
					"texton" : "E",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[5]"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.294444, 1.0, 0.190988, 1.0 ],
					"bgoveroncolor" : [ 0.291775, 0.862135, 0.029122, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-178",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 707.717346, 349.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 148.0, 333.0, 20.0, 20.0 ],
					"rounded" : 30.0,
					"text" : "d",
					"texton" : "E",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[4]"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.294444, 1.0, 0.190988, 1.0 ],
					"bgoveroncolor" : [ 0.291775, 0.862135, 0.029122, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-177",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 690.233643, 350.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 128.0, 333.0, 20.0, 20.0 ],
					"rounded" : 30.0,
					"text" : "d",
					"texton" : "E",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[3]"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.294444, 1.0, 0.190988, 1.0 ],
					"bgoveroncolor" : [ 0.291775, 0.862135, 0.029122, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-176",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 672.75, 348.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 333.0, 20.0, 20.0 ],
					"rounded" : 30.0,
					"text" : "d",
					"texton" : "E",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[2]"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.294444, 1.0, 0.190988, 1.0 ],
					"bgoveroncolor" : [ 0.291775, 0.862135, 0.029122, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-175",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 655.266357, 348.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 88.0, 333.0, 20.0, 20.0 ],
					"rounded" : 30.0,
					"text" : "d",
					"texton" : "E",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable[1]"
				}

			}
, 			{
				"box" : 				{
					"bgoncolor" : [ 0.294444, 1.0, 0.190988, 1.0 ],
					"bgoveroncolor" : [ 0.291775, 0.862135, 0.029122, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-172",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 637.782715, 348.0, 19.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 68.0, 333.0, 20.0, 20.0 ],
					"rounded" : 30.0,
					"text" : "d",
					"texton" : "E",
					"textoncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"varname" : "enable"
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
					"patching_rect" : [ 60.785706, 327.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.516357, 116.0, 48.0, 20.0 ],
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
					"patching_rect" : [ 507.071442, 327.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 468.085449, 116.0, 48.0, 20.0 ],
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
					"patching_rect" : [ 443.357147, 327.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 405.654541, 116.0, 48.0, 20.0 ],
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
					"patching_rect" : [ 379.642853, 327.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 343.223633, 116.0, 48.0, 20.0 ],
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
					"patching_rect" : [ 315.928589, 327.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.792725, 116.0, 48.0, 20.0 ],
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
					"patching_rect" : [ 252.214279, 327.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 218.361816, 116.0, 48.0, 20.0 ],
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
					"patching_rect" : [ 188.5, 327.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 155.930908, 116.0, 48.0, 20.0 ],
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
					"patching_rect" : [ 125.0, 327.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 93.5, 116.0, 48.0, 20.0 ],
					"text" : "Pattern"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Bold",
					"fontsize" : 10.0,
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 375.5, 128.0, 59.5, 18.0 ],
					"restore" : 					{
						"dmxusbpro" : [ 0 ],
						"enable" : [ 0 ],
						"enable[16]" : [ 0 ],
						"enable[1]" : [ 1 ],
						"enable[2]" : [ 1 ],
						"enable[3]" : [ 1 ],
						"enable[4]" : [ 1 ],
						"enable[5]" : [ 1 ],
						"enable[6]" : [ 1 ],
						"enable[7]" : [ 1 ],
						"flash" : [ 0 ],
						"flash[1]" : [ 0 ],
						"midiin" : [ 0 ],
						"multislider[1]" : [ 0.0, 0.0, 52.0, 66.0, 52.0, 135.0, 156.0, 0.0, 0.0 ],
						"multislider[2]" : [ 0.0, 0.0, 52.0, 66.0, 52.0, 135.0, 156.0, 0.0, 0.0 ],
						"multislider[3]" : [ 0.0, 0.0, 52.0, 66.0, 52.0, 135.0, 156.0, 0.0, 0.0 ],
						"multislider[4]" : [ 0.0, 0.0, 52.0, 66.0, 52.0, 135.0, 156.0, 0.0, 0.0 ],
						"multislider[5]" : [ 0.0, 0.0, 52.0, 66.0, 52.0, 135.0, 156.0, 0.0, 0.0 ],
						"multislider[6]" : [ 0.0, 0.0, 52.0, 66.0, 52.0, 135.0, 156.0, 0.0, 0.0 ],
						"multislider[7]" : [ 0.0, 0.0, 52.0, 66.0, 52.0, 135.0, 156.0, 0.0, 0.0 ],
						"multislider[8]" : [ 0.0, 0.0, 52.0, 66.0, 52.0, 135.0, 156.0, 0.0, 0.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u274000132"
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
					"items" : [ "IAC Driver Bus 1", ",", "nanoKONTROL SLIDER/KNOB", ",", "to Max 1", ",", "to Max 2" ],
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
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 205.5, 99.0, 95.0, 20.0 ],
					"text" : "loadmess menu"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 11.0,
					"id" : "obj-96",
					"items" : [ "None", ",", "/dev/cu.usbserial-6AYL2V8Z" ],
					"labelclick" : 1,
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 219.5, 136.0, 127.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 246.5, 15.0, 127.0, 19.0 ],
					"varname" : "dmxusbpro"
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
					"patching_rect" : [ 205.5, 186.0, 65.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 381.0, 16.0, 65.0, 19.0 ],
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
					"patching_rect" : [ 57.5, 115.0, 61.0, 20.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-19",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 499.5, 7.0, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.214294, 380.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider[5]"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-20",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 561.5, 7.0, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 342.214294, 380.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider[6]"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-21",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 623.5, 7.0, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 404.214294, 380.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider[7]"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-22",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 685.5, 7.0, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 466.214294, 380.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider[8]"
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
					"patching_rect" : [ 375.5, 7.0, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 156.214279, 380.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider[3]"
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
					"patching_rect" : [ 437.5, 7.0, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 218.214279, 380.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider[4]"
				}

			}
, 			{
				"box" : 				{
					"candycane" : 7,
					"id" : "obj-16",
					"ignoreclick" : 1,
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 313.5, 7.0, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 94.214279, 380.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider[2]"
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
					"patching_rect" : [ 251.5, 7.0, 62.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 32.214279, 380.0, 62.0, 53.0 ],
					"setminmax" : [ 0.0, 255.0 ],
					"setstyle" : 1,
					"size" : 9,
					"slidercolor" : [ 0.991636, 0.776874, 0.057928, 1.0 ],
					"spacing" : 1,
					"varname" : "multislider[1]"
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
					"patching_rect" : [ 62.0, 622.0, 93.0, 20.0 ],
					"saved_object_attributes" : 					{
						"filename" : "nanolaser.jso",
						"parameter_enable" : 0
					}
,
					"text" : "js nanolaser.jso"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 41 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 20 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 21 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 22 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 23 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 24 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 25 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-179", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 26 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 27 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-184", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-190", 0 ],
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
					"destination" : [ "obj-2", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-39", 0 ]
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
					"destination" : [ "obj-2", 11 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 12 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 13 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 5 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 14 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 6 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 15 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 7 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 44 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 16 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-179", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 261.0, 211.0, 359.0, 211.0, 359.0, 123.0, 229.0, 123.0 ],
					"source" : [ "obj-67", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 43 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 283.0, 165.0, 215.0, 165.0 ],
					"source" : [ "obj-96", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-97", 0 ]
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
				"name" : "nanolaser.jso",
				"bootpath" : "/development/swirly/Max/nanolaser",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "nslider.maxpat",
				"bootpath" : "/development/swirly/Max",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ndial.maxpat",
				"bootpath" : "/development/swirly/Max",
				"patcherrelativepath" : "..",
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
