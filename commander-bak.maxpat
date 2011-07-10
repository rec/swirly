{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 900.0, 274.0, 721.0, 675.0 ],
		"bglocked" : 0,
		"defrect" : [ 900.0, 274.0, 721.0, 675.0 ],
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
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "M4L.api.SelectDevice",
					"text" : "M4L.api.SelectDevice",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"patching_rect" : [ 374.0, 278.0, 127.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "m4l.api.SetSelectedTrackIndex",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"patching_rect" : [ 513.0, 407.0, 176.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend toggle",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-21",
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 258.0, 83.0, 18.0 ],
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.toggle",
					"varname" : "live.toggle",
					"presentation_rect" : [ 62.0, 80.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.0, 180.0, 15.0, 15.0 ],
					"presentation" : 1,
					"parameter_enable" : 1,
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.toggle",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "off", "on" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.toggle",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[1]",
					"presentation_rect" : [ 20.0, 110.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-77",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 187.0, 120.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "bow",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[1]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[10]",
					"presentation_rect" : [ 20.0, 98.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-78",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 144.0, 116.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "sax",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[10]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[8]",
					"presentation_rect" : [ 56.0, 135.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-85",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 290.0, 169.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "other",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[8]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[9]",
					"presentation_rect" : [ 91.0, 122.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-86",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 363.0, 112.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "wind",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[9]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[4]",
					"presentation_rect" : [ 91.0, 110.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-81",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 237.0, 165.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "synth",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[4]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[5]",
					"presentation_rect" : [ 56.0, 122.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-82",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 310.0, 114.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "reed",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[5]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[6]",
					"presentation_rect" : [ 91.0, 98.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-83",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 195.0, 164.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "perc",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[6]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[7]",
					"presentation_rect" : [ 20.0, 122.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-84",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 268.0, 113.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "brass",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[7]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[2]",
					"presentation_rect" : [ 56.0, 110.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-79",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 154.0, 162.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "pluck",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[2]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.text",
					"varname" : "live.text[3]",
					"presentation_rect" : [ 56.0, 98.0, 32.0, 8.0 ],
					"numoutlets" : 2,
					"fontsize" : 9.0,
					"id" : "obj-80",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 227.0, 111.0, 40.0, 20.0 ],
					"presentation" : 1,
					"focusbordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"parameter_enable" : 1,
					"mode" : 0,
					"bordercolor" : [ 0.141176, 0.129412, 0.141176, 0.0 ],
					"text" : "bass",
					"numinlets" : 1,
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.text[3]",
							"parameter_modmin" : 0.0,
							"parameter_linknames" : 0,
							"parameter_modmode" : 0,
							"parameter_info" : "",
							"parameter_units" : "",
							"parameter_order" : 0,
							"parameter_defer" : 0,
							"parameter_speedlim" : 1.0,
							"parameter_steps" : 0,
							"parameter_invisible" : 0,
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_exponent" : 1.0,
							"parameter_annotation_name" : "",
							"parameter_unitstyle" : 10,
							"parameter_mmax" : 1.0,
							"parameter_mmin" : 0.0,
							"parameter_type" : 2,
							"parameter_initial_enable" : 0,
							"parameter_shortname" : "live.text",
							"parameter_modmax" : 127.0
						}

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend goto",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-43",
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 218.0, 74.0, 18.0 ],
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiout",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"id" : "obj-65",
					"patching_rect" : [ 97.0, 509.0, 47.0, 18.0 ],
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiin",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"id" : "obj-64",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 97.0, 256.0, 40.0, 18.0 ],
					"fontname" : "Arial Bold",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Commander",
					"presentation_rect" : [ 47.0, 160.0, 62.0, 17.0 ],
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 9.0,
					"id" : "obj-924",
					"patching_rect" : [ 451.0, 101.0, 62.0, 17.0 ],
					"presentation" : 1,
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tom Swirly's",
					"presentation_rect" : [ 15.0, 149.0, 62.0, 17.0 ],
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-923",
					"patching_rect" : [ 399.0, 101.0, 62.0, 17.0 ],
					"presentation" : 1,
					"fontname" : "Arial Italic",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend pc",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 305.0, 71.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiparse",
					"numoutlets" : 7,
					"fontsize" : 12.0,
					"id" : "obj-1592",
					"outlettype" : [ "", "", "", "int", "int", "int", "int" ],
					"patching_rect" : [ 97.0, 278.0, 100.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend 32",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-1420",
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 451.0, 71.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiformat",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-1240",
					"outlettype" : [ "int" ],
					"patching_rect" : [ 97.0, 484.0, 145.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 7
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route bank pc toggle",
					"numoutlets" : 4,
					"fontsize" : 12.0,
					"id" : "obj-1239",
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 97.0, 416.0, 209.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"id" : "obj-1937",
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 258.0, 299.0, 100.0, 20.0 ],
					"types" : [  ],
					"fontname" : "Arial",
					"items" : [ "compile", ",", "clear", ",", "init", ",", "depth", 0, ",", "depth", 1, ",", "depth", 2, ",", "depth", 3, ",", "depth", 6 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess init",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-319",
					"outlettype" : [ "" ],
					"patching_rect" : [ 235.0, 349.0, 81.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js commander.jso",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"patching_rect" : [ 97.0, 381.0, 104.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append 0",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.0, 180.0, 65.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.arrows",
					"varname" : "live.arrow.0",
					"presentation_rect" : [ 5.0, 12.0, 32.5, 12.0 ],
					"numoutlets" : 1,
					"id" : "obj-5",
					"rightarrow" : 0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.0, 12.0, 32.5, 12.0 ],
					"presentation" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"leftarrow" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "sax",
					"presentation_rect" : [ 40.0, 10.0, 75.0, 14.0 ],
					"outputmode" : 1,
					"numoutlets" : 4,
					"fontsize" : 10.0,
					"id" : "obj-7",
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 40.0, 10.0, 75.0, 14.0 ],
					"lines" : 1,
					"presentation" : 1,
					"keymode" : 1,
					"rounded" : 0.0,
					"wordwrap" : 0,
					"border" : 1.0,
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append 1",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.0, 198.0, 65.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.arrows",
					"varname" : "live.arrow.1",
					"presentation_rect" : [ 5.0, 30.0, 32.5, 12.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"rightarrow" : 0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.0, 30.0, 32.5, 12.0 ],
					"presentation" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"leftarrow" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "soprano",
					"presentation_rect" : [ 40.0, 28.0, 75.0, 14.0 ],
					"outputmode" : 1,
					"numoutlets" : 4,
					"fontsize" : 10.0,
					"id" : "obj-12",
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 40.0, 28.0, 75.0, 14.0 ],
					"lines" : 1,
					"presentation" : 1,
					"keymode" : 1,
					"rounded" : 0.0,
					"wordwrap" : 0,
					"border" : 1.0,
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "append 2",
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"patching_rect" : [ 37.0, 216.0, 65.0, 20.0 ],
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "live.arrows",
					"varname" : "live.arrow.2",
					"presentation_rect" : [ 5.0, 48.0, 32.5, 12.0 ],
					"numoutlets" : 1,
					"id" : "obj-15",
					"rightarrow" : 0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 5.0, 48.0, 32.5, 12.0 ],
					"presentation" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"leftarrow" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "SoprnoSx",
					"presentation_rect" : [ 40.0, 46.0, 75.0, 14.0 ],
					"outputmode" : 1,
					"numoutlets" : 4,
					"fontsize" : 10.0,
					"id" : "obj-17",
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 40.0, 46.0, 75.0, 14.0 ],
					"lines" : 1,
					"presentation" : 1,
					"keymode" : 1,
					"rounded" : 0.0,
					"wordwrap" : 0,
					"border" : 1.0,
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-78", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1420", 0 ],
					"destination" : [ "obj-1240", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-319", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1937", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-1592", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1240", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1592", 3 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1239", 2 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 233.166672, 458.0, 311.0, 458.0, 311.0, 148.0, 350.0, 148.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1239", 1 ],
					"destination" : [ "obj-1240", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1239", 0 ],
					"destination" : [ "obj-1420", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1239", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ],
		"parameters" : 		{
			"obj-19::obj-19::obj-19" : [ "saved-int", "saved-int", 0 ],
			"obj-81" : [ "live.text[4]", "live.text", 0 ],
			"obj-82" : [ "live.text[5]", "live.text", 0 ],
			"obj-83" : [ "live.text[6]", "live.text", 0 ],
			"obj-84" : [ "live.text[7]", "live.text", 0 ],
			"obj-79" : [ "live.text[2]", "live.text", 0 ],
			"obj-80" : [ "live.text[3]", "live.text", 0 ],
			"obj-77" : [ "live.text[1]", "live.text", 0 ],
			"obj-20" : [ "live.toggle", "live.toggle", 0 ],
			"obj-86" : [ "live.text[9]", "live.text", 0 ],
			"obj-78" : [ "live.text[10]", "live.text", 0 ],
			"obj-85" : [ "live.text[8]", "live.text", 0 ]
		}

	}

}
