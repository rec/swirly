{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 533.0, 50.0, 267.0, 390.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bglocked" : 1,
		"defrect" : [ 533.0, 50.0, 267.0, 390.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 9.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 0,
		"boxanimatetime" : 500,
		"imprint" : 1,
		"title" : "DSP Status",
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "substitute append text",
					"ignoreclick" : 0,
					"id" : "obj-6",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 771.0, 52.0, 113.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus optionname 3",
					"ignoreclick" : 0,
					"id" : "obj-7",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 771.0, 30.0, 116.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "",
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 1,
					"texton" : "Button On",
					"truncate" : 1,
					"align" : 0,
					"id" : "obj-72",
					"fontname" : "Arial",
					"spacing_y" : 4.0,
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 0,
					"numinlets" : 1,
					"tosymbol" : 1,
					"presentation_rect" : [ 14.0, 102.0, 91.0, 20.0 ],
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"mode" : 0,
					"outputmode" : 1,
					"fontlink" : 0,
					"textovercolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"border" : 0,
					"numoutlets" : 3,
					"rounded" : 0.0,
					"underline" : 0,
					"fontface" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"text" : "Playthrough Input",
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"fontsize" : 9.27615,
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 771.0, 74.0, 112.0, 17.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"presentation" : 1,
					"background" : 0,
					"bgoveroncolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus option 3",
					"ignoreclick" : 0,
					"id" : "obj-87",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 771.0, 126.0, 90.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-90",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 108.0, 103.0, 139.939545, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 771.0, 105.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : "Unsupported",
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"ignoreclick" : 0,
					"id" : "obj-84",
					"hidden" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 48.0, 31.0, 18.0, 18.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 74.0, 52.0, 18.0, 18.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "View",
					"ignoreclick" : 1,
					"id" : "obj-115",
					"fontname" : "Arial Bold Italic",
					"hidden" : 1,
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"presentation_rect" : [ 67.0, 30.0, 40.0, 21.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontsize" : 12.754706,
					"patching_rect" : [ 64.0, 27.0, 40.0, 21.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"ignoreclick" : 0,
					"id" : "obj-66",
					"hidden" : 1,
					"numinlets" : 1,
					"presentation_rect" : [ 145.0, 261.0, 18.0, 18.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"checkedcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 111.0, 52.0, 18.0, 18.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "NoFloat",
					"ignoreclick" : 1,
					"id" : "obj-78",
					"fontname" : "Arial Bold Italic",
					"hidden" : 1,
					"numinlets" : 1,
					"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"presentation_rect" : [ 164.0, 260.0, 58.0, 21.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
					"fontsize" : 12.754706,
					"patching_rect" : [ 100.0, 27.0, 58.0, 21.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onecopy",
					"ignoreclick" : 0,
					"id" : "obj-85",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"patching_rect" : [ 74.0, 120.0, 50.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"ignoreclick" : 0,
					"id" : "obj-142",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 74.0, 98.0, 62.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 533, 50, 800, 440, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p View",
					"ignoreclick" : 0,
					"id" : "obj-140",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 11.595187,
					"outlettype" : [ "" ],
					"patching_rect" : [ 74.0, 74.0, 56.0, 20.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 329.0, 303.0, 657.0, 488.0 ],
						"bglocked" : 0,
						"defrect" : [ 329.0, 303.0, 657.0, 488.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nogrow, window flags nozoom",
									"linecount" : 2,
									"id" : "obj-29",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 343.0, 113.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"prototypename" : "Arial9",
									"id" : "obj-5",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"id" : "obj-6",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"id" : "obj-8",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.435669,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "savewindow 1",
									"id" : "obj-1",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"id" : "obj-63",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"id" : "obj-62",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"id" : "obj-37",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags nofloat, window exec",
									"id" : "obj-38",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 323.0, 170.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window exec",
									"id" : "obj-39",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l b",
									"id" : "obj-40",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.435669,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags grow, window flags zoom",
									"linecount" : 2,
									"id" : "obj-42",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 343.0, 100.0, 28.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend window size",
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 257.0, 108.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymax",
									"id" : "obj-45",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmax",
									"id" : "obj-46",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymin",
									"id" : "obj-47",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmin",
									"id" : "obj-48",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pref.",
									"id" : "obj-49",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 171.0, 147.0, 31.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0",
									"id" : "obj-51",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "150 50 1060 610",
									"id" : "obj-52",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 147.0, 127.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-53",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-54",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0",
									"id" : "obj-55",
									"fontname" : "Arial",
									"numinlets" : 4,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-56",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-57",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l",
									"id" : "obj-35",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 378.0, 19.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window flags float, window exec",
									"id" : "obj-32",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 480.0, 343.0, 158.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "window exec",
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l b",
									"id" : "obj-30",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.435669,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend window size",
									"id" : "obj-28",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 257.0, 108.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymax",
									"id" : "obj-27",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmax",
									"id" : "obj-26",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ymin",
									"id" : "obj-23",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Xmin",
									"id" : "obj-22",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "pref.",
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "unpack 0 0 0 0",
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 4,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "int", "int", "int" ],
									"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "533 50 800 440",
									"id" : "obj-16",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-12",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 0 0 0 0",
									"id" : "obj-7",
									"fontname" : "Arial",
									"numinlets" : 4,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "view",
									"id" : "obj-11",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 10.435669,
									"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "presentation $1",
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "" ],
									"patching_rect" : [ 250.0, 90.0, 82.0, 16.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "== 0",
									"id" : "obj-9",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 10.435669,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"prototypename" : "Arial9",
									"id" : "obj-44",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"id" : "obj-41",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1 0",
									"id" : "obj-25",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 10.435669,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"prototypename" : "Arial9",
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 3 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-52", 1 ],
									"hidden" : 0,
									"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 160.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 3 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 2 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 1 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-55", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-55", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-55", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 2 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"I/O Mappings\"",
					"ignoreclick" : 0,
					"id" : "obj-114",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"patching_rect" : [ 425.0, 501.0, 89.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 806.0, 81.0, 194.0, 351.0 ],
						"bglocked" : 1,
						"defrect" : [ 806.0, 81.0, 194.0, 351.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 1,
						"default_fontsize" : 9.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 0,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"title" : "I/O Mappings",
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"id" : "obj-84",
									"hidden" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 6.0, 4.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 34.0, 48.0, 18.0, 18.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "View",
									"id" : "obj-115",
									"fontname" : "Arial Bold Italic",
									"hidden" : 1,
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"presentation_rect" : [ 27.0, 3.0, 41.0, 21.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontsize" : 12.754706,
									"patching_rect" : [ 23.0, 23.0, 41.0, 21.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"prototypename" : "Arial9",
									"id" : "obj-237",
									"hidden" : 1,
									"numinlets" : 1,
									"presentation_rect" : [ 96.0, 4.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 140.0, 48.0, 18.0, 18.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "NoFloat",
									"id" : "obj-78",
									"fontname" : "Arial Bold Italic",
									"hidden" : 1,
									"numinlets" : 1,
									"frgb" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"presentation_rect" : [ 115.0, 3.0, 58.0, 21.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 0.501961, 0.0, 1.0 ],
									"fontsize" : 12.754706,
									"patching_rect" : [ 129.0, 23.0, 56.0, 21.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispatcher",
									"id" : "obj-238",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 10.435669,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 70.0, 47.0, 62.0, 18.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "window", "flags", "nogrow", "close", "nozoom", "float", "menu", "minimize", ";", "#Q", "window", "constrain", 2, 2, 32768, 32768, ";", "#Q", "window", "size", 806, 81, 1000, 432, ";", "#Q", "window", "title", ";", "#Q", "window", "exec", ";", "#Q", "savewindow", 1, ";", "#Q", "end", ";" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p View",
									"id" : "obj-239",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.0, 23.0, 56.0, 20.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 70.0, 262.0, 657.0, 488.0 ],
										"bglocked" : 0,
										"defrect" : [ 70.0, 262.0, 657.0, 488.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 466.0, 378.0, 19.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"id" : "obj-5",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 466.0, 257.0, 18.0, 18.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"id" : "obj-6",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 466.0, 279.0, 18.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 466.0, 301.0, 46.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "savewindow 1",
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 362.0, 428.0, 76.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"id" : "obj-63",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 301.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "qlim",
													"id" : "obj-62",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 301.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"id" : "obj-37",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 378.0, 19.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nofloat, window exec",
													"id" : "obj-38",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 466.0, 323.0, 170.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window exec",
													"id" : "obj-39",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 323.0, 70.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"id" : "obj-40",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "", "bang" ],
													"patching_rect" : [ 43.0, 279.0, 46.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags grow, window flags zoom",
													"linecount" : 2,
													"id" : "obj-42",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.0, 343.0, 100.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend window size",
													"id" : "obj-43",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 257.0, 108.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymax",
													"id" : "obj-45",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 208.0, 186.0, 37.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmax",
													"id" : "obj-46",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 157.0, 186.0, 37.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymin",
													"id" : "obj-47",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 105.0, 186.0, 34.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmin",
													"id" : "obj-48",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 54.0, 186.0, 34.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pref.",
													"id" : "obj-49",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 171.0, 147.0, 31.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0",
													"id" : "obj-51",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 43.0, 167.0, 173.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "130 50 1135 520",
													"id" : "obj-52",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 147.0, 127.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-53",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 197.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-54",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 146.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0 0 0",
													"id" : "obj-55",
													"fontname" : "Arial",
													"numinlets" : 4,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 227.0, 173.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-56",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 94.0, 205.0, 51.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-57",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 43.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t l",
													"id" : "obj-35",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 378.0, 19.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags float, window exec",
													"id" : "obj-32",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 480.0, 343.0, 158.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window exec",
													"id" : "obj-31",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 323.0, 70.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b l b",
													"id" : "obj-30",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "", "bang" ],
													"patching_rect" : [ 283.0, 279.0, 46.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "window flags nogrow, window flags nozoom",
													"linecount" : 2,
													"id" : "obj-29",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 310.0, 343.0, 113.0, 28.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend window size",
													"id" : "obj-28",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 257.0, 108.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymax",
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 448.0, 186.0, 37.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmax",
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 397.0, 186.0, 37.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Ymin",
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 345.0, 186.0, 34.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Xmin",
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 294.0, 186.0, 34.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pref.",
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 411.0, 147.0, 31.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0",
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 4,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "int", "int", "int" ],
													"patching_rect" : [ 283.0, 167.0, 173.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "806 81 1000 432",
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 147.0, 127.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 437.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 386.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pak 0 0 0 0",
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 4,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 227.0, 173.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-4",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 334.0, 205.0, 51.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "int", "bang" ],
													"patching_rect" : [ 283.0, 205.0, 50.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "view",
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 0,
													"fontsize" : 10.435669,
													"patching_rect" : [ 284.0, 69.0, 31.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "presentation $1",
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 250.0, 90.0, 82.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 0",
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 250.0, 69.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"prototypename" : "Arial9",
													"id" : "obj-44",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 153.0, 17.0, 18.0, 18.0 ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"prototypename" : "Arial9",
													"id" : "obj-41",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 153.0, 52.0, 18.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1 0",
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 153.0, 74.0, 46.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"prototypename" : "Arial9",
													"id" : "obj-21",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.0, 443.0, 18.0, 18.0 ],
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 2 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 2 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 1 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-62", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-62", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-55", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-55", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-55", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-55", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 1 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 2 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 3 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-51", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-55", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [ 52.5, 251.0, 34.0, 251.0, 34.0, 139.0, 160.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [ 292.5, 251.0, 274.0, 251.0, 274.0, 139.0, 400.5, 139.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 3 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 2 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-7", 3 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-7", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-127",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 198.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 285.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-128",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 181.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 267.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 8
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-129",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 164.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 249.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-130",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 147.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 231.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-131",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 130.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 213.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-132",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 113.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 195.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-133",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 96.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 177.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-134",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 215.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 303.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 10
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-135",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 232.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 321.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 11
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-136",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 249.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 339.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-137",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 266.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 357.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 13
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-138",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 283.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 375.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 14
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-139",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 300.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 393.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-140",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 317.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 411.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 16
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-141",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 79.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 159.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-142",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 95.0, 62.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 525.0, 141.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p Ogrouplabel",
									"id" : "obj-143",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 16,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 525.0, 84.0, 221.5, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 228.0, 171.0, 713.0, 321.0 ],
										"bglocked" : 1,
										"defrect" : [ 228.0, 171.0, 713.0, 321.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack",
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 177.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 55.0, 129.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 63.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 16",
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 42.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "Uzi 16",
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 27.0, 107.0, 47.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 155.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 27.0, 85.0, 74.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 624.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 586.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 548.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 510.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 472.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 434.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 396.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 358.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 321.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 245.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 207.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 169.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 131.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 93.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "spray 16",
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 16,
													"fontsize" : 10.435669,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 55.0, 199.0, 588.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-28",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 15.0, 17.0, 17.0 ],
													"comment" : "1-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-29",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 624.0, 277.0, 17.0, 17.0 ],
													"comment" : "16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-30",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 586.0, 277.0, 17.0, 17.0 ],
													"comment" : "15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-31",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 548.0, 277.0, 17.0, 17.0 ],
													"comment" : "14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-32",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 510.0, 277.0, 17.0, 17.0 ],
													"comment" : "13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-33",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 472.0, 277.0, 17.0, 17.0 ],
													"comment" : "12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-34",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 434.0, 277.0, 17.0, 17.0 ],
													"comment" : "11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-35",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 396.0, 277.0, 17.0, 17.0 ],
													"comment" : "10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-36",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 277.0, 17.0, 17.0 ],
													"comment" : "9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-37",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 321.0, 277.0, 17.0, 17.0 ],
													"comment" : "8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-38",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 283.0, 277.0, 17.0, 17.0 ],
													"comment" : "7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-39",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 245.0, 277.0, 17.0, 17.0 ],
													"comment" : "6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-40",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 207.0, 277.0, 17.0, 17.0 ],
													"comment" : "5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-41",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 169.0, 277.0, 17.0, 17.0 ],
													"comment" : "4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-42",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 131.0, 277.0, 17.0, 17.0 ],
													"comment" : "3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-43",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 93.0, 277.0, 17.0, 17.0 ],
													"comment" : "2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-44",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 55.0, 277.0, 17.0, 17.0 ],
													"comment" : "1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 2 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 3 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 4 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 5 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 6 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 7 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 8 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 9 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 10 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 11 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 12 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 13 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 14 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 15 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p Ogroup",
									"id" : "obj-144",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 16,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 754.0, 84.0, 221.5, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 141.0, 672.0, 300.0 ],
										"bglocked" : 1,
										"defrect" : [ 40.0, 141.0, 672.0, 300.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack",
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 181.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 134.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 68.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 16",
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 46.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 618.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 580.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 542.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 504.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 427.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 389.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 351.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 313.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 275.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 237.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 199.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 84.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "Uzi 16",
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 19.0, 112.0, 46.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 60.0, 159.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 19.0, 90.0, 73.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "spray 16",
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 16,
													"fontsize" : 10.435669,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 46.0, 203.0, 591.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-27",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 14.0, 17.0, 17.0 ],
													"comment" : "1-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-28",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 618.0, 253.0, 17.0, 17.0 ],
													"comment" : "16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-29",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 580.0, 253.0, 17.0, 17.0 ],
													"comment" : "15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-30",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 542.0, 253.0, 17.0, 17.0 ],
													"comment" : "14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-31",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 504.0, 253.0, 17.0, 17.0 ],
													"comment" : "13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-32",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 465.0, 253.0, 17.0, 17.0 ],
													"comment" : "12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-33",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 427.0, 253.0, 17.0, 17.0 ],
													"comment" : "11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-34",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 389.0, 253.0, 17.0, 17.0 ],
													"comment" : "10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-35",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 351.0, 253.0, 17.0, 17.0 ],
													"comment" : "9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-36",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 313.0, 253.0, 17.0, 17.0 ],
													"comment" : "8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-37",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 275.0, 253.0, 17.0, 17.0 ],
													"comment" : "7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-38",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 237.0, 253.0, 17.0, 17.0 ],
													"comment" : "6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-39",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 199.0, 253.0, 17.0, 17.0 ],
													"comment" : "5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-40",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 160.0, 253.0, 17.0, 17.0 ],
													"comment" : "4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-41",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 253.0, 17.0, 17.0 ],
													"comment" : "3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-42",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 84.0, 253.0, 17.0, 17.0 ],
													"comment" : "2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-43",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 253.0, 17.0, 17.0 ],
													"comment" : "1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 2 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 3 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 4 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 5 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 6 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 7 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 8 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 9 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 10 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 11 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 12 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 13 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 14 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 15 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Chan. Group",
									"id" : "obj-145",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"presentation_rect" : [ 115.0, 24.0, 67.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"patching_rect" : [ 581.0, 31.0, 67.0, 17.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-146",
									"fontname" : "Arial Bold",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 118.0, 40.0, 58.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 525.0, 30.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "1-16", ",", "17-32", ",", "33-48", ",", "49-64", ",", "65-80", ",", "81-96", ",", "97-112", ",", "113-128", ",", "129-144", ",", "145-160", ",", "161-176", ",", "177-192", ",", "193-208", ",", "209-224", ",", "225-240", ",", "241-256", ",", "257-272", ",", "273-288", ",", "289-304", ",", "305-320", ",", "321-336", ",", "337-352", ",", "353-368", ",", "369-384", ",", "385-400", ",", "401-416", ",", "417-432", ",", "433-448", ",", "449-464", ",", "465-480", ",", "481-496", ",", "497-512" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 16",
									"id" : "obj-147",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 411.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 15",
									"id" : "obj-148",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 393.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 14",
									"id" : "obj-149",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 375.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 13",
									"id" : "obj-150",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 357.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 12",
									"id" : "obj-151",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 339.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 11",
									"id" : "obj-152",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 321.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 10",
									"id" : "obj-153",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 303.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 9",
									"id" : "obj-154",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 285.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 8",
									"id" : "obj-155",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 267.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 7",
									"id" : "obj-156",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 249.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 6",
									"id" : "obj-157",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 231.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 5",
									"id" : "obj-158",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 213.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 4",
									"id" : "obj-159",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 195.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 3",
									"id" : "obj-160",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 177.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 2",
									"id" : "obj-161",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 159.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus output 1",
									"id" : "obj-162",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 754.0, 141.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-163",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 317.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 411.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-164",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 300.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 393.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-165",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 283.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 375.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-166",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 266.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 357.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-167",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 249.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 339.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-168",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 232.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 321.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-169",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 215.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 303.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-170",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 198.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 285.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-171",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 181.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 267.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-172",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 164.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 249.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-173",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 147.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 231.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-174",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 130.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 213.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-175",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 113.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 195.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-176",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 96.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 177.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-177",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 79.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 159.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-178",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 117.0, 62.0, 62.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 701.0, 141.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "output", ",", 2, "output" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Output Map.",
									"id" : "obj-179",
									"fontname" : "Arial Bold Italic",
									"numinlets" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 105.0, 3.0, 78.0, 20.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 652.0, 30.0, 78.0, 20.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-3",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 198.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 285.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-4",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 181.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 267.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 8
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-5",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 164.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 249.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 7
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-6",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 147.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 231.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-7",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 130.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 213.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 5
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-8",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 113.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 195.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-10",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 96.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 177.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-11",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 215.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 303.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 10
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-12",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 232.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 321.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 11
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-13",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 249.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 339.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 12
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-14",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 266.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 357.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 13
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-15",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 283.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 375.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 14
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-16",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 300.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 393.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 15
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-17",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 317.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 411.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 16
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-18",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 79.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 159.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"align" : 1,
									"id" : "obj-19",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"presentation_rect" : [ 5.0, 62.0, 21.0, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 0.858824, 0.858824, 0.858824, 0.0 ],
									"numoutlets" : 3,
									"menumode" : 2,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 30.0, 141.0, 28.0, 17.0 ],
									"framecolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
									"presentation" : 1,
									"items" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p Igrouplabel",
									"id" : "obj-20",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 16,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 30.0, 84.0, 221.5, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 228.0, 171.0, 713.0, 321.0 ],
										"bglocked" : 1,
										"defrect" : [ 228.0, 171.0, 713.0, 321.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack",
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 177.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 55.0, 129.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 63.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 16",
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 42.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "Uzi 16",
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 27.0, 107.0, 47.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 69.0, 155.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 27.0, 85.0, 74.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 624.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 586.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 548.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 510.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 472.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 434.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 396.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 358.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 321.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 283.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 245.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 207.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 169.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 131.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 93.0, 246.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "setitem 0 $1",
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 55.0, 221.0, 73.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "spray 16",
													"id" : "obj-27",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 16,
													"fontsize" : 10.435669,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 55.0, 199.0, 588.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-28",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 27.0, 15.0, 17.0, 17.0 ],
													"comment" : "1-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-29",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 624.0, 277.0, 17.0, 17.0 ],
													"comment" : "16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-30",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 586.0, 277.0, 17.0, 17.0 ],
													"comment" : "15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-31",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 548.0, 277.0, 17.0, 17.0 ],
													"comment" : "14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-32",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 510.0, 277.0, 17.0, 17.0 ],
													"comment" : "13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-33",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 472.0, 277.0, 17.0, 17.0 ],
													"comment" : "12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-34",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 434.0, 277.0, 17.0, 17.0 ],
													"comment" : "11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-35",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 396.0, 277.0, 17.0, 17.0 ],
													"comment" : "10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-36",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 358.0, 277.0, 17.0, 17.0 ],
													"comment" : "9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-37",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 321.0, 277.0, 17.0, 17.0 ],
													"comment" : "8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-38",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 283.0, 277.0, 17.0, 17.0 ],
													"comment" : "7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-39",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 245.0, 277.0, 17.0, 17.0 ],
													"comment" : "6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-40",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 207.0, 277.0, 17.0, 17.0 ],
													"comment" : "5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-41",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 169.0, 277.0, 17.0, 17.0 ],
													"comment" : "4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-42",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 131.0, 277.0, 17.0, 17.0 ],
													"comment" : "3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-43",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 93.0, 277.0, 17.0, 17.0 ],
													"comment" : "2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-44",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 55.0, 277.0, 17.0, 17.0 ],
													"comment" : "1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 1 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 2 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 3 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 4 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 5 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 6 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 7 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 8 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 9 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 10 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 11 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 12 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 13 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 14 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 15 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p Igroup",
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 16,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 259.0, 84.0, 221.5, 17.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 40.0, 141.0, 672.0, 300.0 ],
										"bglocked" : 1,
										"defrect" : [ 40.0, 141.0, 672.0, 300.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 9.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack",
													"id" : "obj-1",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 181.0, 33.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"id" : "obj-2",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 46.0, 134.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"id" : "obj-3",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 68.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 16",
													"id" : "obj-6",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 46.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-7",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 618.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-8",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 580.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-9",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 542.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-10",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 504.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-11",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 465.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-12",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 427.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-13",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 389.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-14",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 351.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-15",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 313.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-16",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 275.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-17",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 237.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-18",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 199.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-19",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 160.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-20",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 122.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-21",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 84.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set $1",
													"id" : "obj-22",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "" ],
													"patching_rect" : [ 46.0, 225.0, 37.0, 16.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "Uzi 16",
													"id" : "obj-23",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 3,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 19.0, 112.0, 46.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"id" : "obj-24",
													"fontname" : "Arial",
													"numinlets" : 2,
													"numoutlets" : 1,
													"fontsize" : 10.435669,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 60.0, 159.0, 32.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"id" : "obj-25",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 2,
													"fontsize" : 10.435669,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 19.0, 90.0, 73.5, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "spray 16",
													"id" : "obj-26",
													"fontname" : "Arial",
													"numinlets" : 1,
													"numoutlets" : 16,
													"fontsize" : 10.435669,
													"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 46.0, 203.0, 591.0, 18.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"id" : "obj-27",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.0, 14.0, 17.0, 17.0 ],
													"comment" : "1-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-28",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 618.0, 253.0, 17.0, 17.0 ],
													"comment" : "16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-29",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 580.0, 253.0, 17.0, 17.0 ],
													"comment" : "15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-30",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 542.0, 253.0, 17.0, 17.0 ],
													"comment" : "14"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-31",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 504.0, 253.0, 17.0, 17.0 ],
													"comment" : "13"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-32",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 465.0, 253.0, 17.0, 17.0 ],
													"comment" : "12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-33",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 427.0, 253.0, 17.0, 17.0 ],
													"comment" : "11"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-34",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 389.0, 253.0, 17.0, 17.0 ],
													"comment" : "10"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-35",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 351.0, 253.0, 17.0, 17.0 ],
													"comment" : "9"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-36",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 313.0, 253.0, 17.0, 17.0 ],
													"comment" : "8"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-37",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 275.0, 253.0, 17.0, 17.0 ],
													"comment" : "7"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-38",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 237.0, 253.0, 17.0, 17.0 ],
													"comment" : "6"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-39",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 199.0, 253.0, 17.0, 17.0 ],
													"comment" : "5"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-40",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 160.0, 253.0, 17.0, 17.0 ],
													"comment" : "4"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-41",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 122.0, 253.0, 17.0, 17.0 ],
													"comment" : "3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-42",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 84.0, 253.0, 17.0, 17.0 ],
													"comment" : "2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"id" : "obj-43",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 46.0, 253.0, 17.0, 17.0 ],
													"comment" : "1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 2 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-24", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 2 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 3 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 4 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 5 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 6 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 7 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 8 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 9 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 10 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 11 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 12 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 13 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 14 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 15 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Arial",
										"default_fontface" : 0,
										"globalpatchername" : "",
										"default_fontname" : "Arial",
										"fontface" : 0,
										"fontsize" : 9.0,
										"default_fontsize" : 9.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Chan. Group",
									"id" : "obj-38",
									"fontname" : "Arial Bold",
									"numinlets" : 1,
									"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"presentation_rect" : [ 24.0, 24.0, 67.0, 17.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"patching_rect" : [ 315.0, 31.0, 67.0, 17.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-39",
									"fontname" : "Arial Bold",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 28.0, 40.0, 58.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 259.0, 30.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "1-16", ",", "17-32", ",", "33-48", ",", "49-64", ",", "65-80", ",", "81-96", ",", "97-112", ",", "113-128", ",", "129-144", ",", "145-160", ",", "161-176", ",", "177-192", ",", "193-208", ",", "209-224", ",", "225-240", ",", "241-256", ",", "257-272", ",", "273-288", ",", "289-304", ",", "305-320", ",", "321-336", ",", "337-352", ",", "353-368", ",", "369-384", ",", "385-400", ",", "401-416", ",", "417-432", ",", "433-448", ",", "449-464", ",", "465-480", ",", "481-496", ",", "497-512" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 16",
									"id" : "obj-60",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 411.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 15",
									"id" : "obj-61",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 393.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 14",
									"id" : "obj-62",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 375.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 13",
									"id" : "obj-63",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 357.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 12",
									"id" : "obj-64",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 339.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 11",
									"id" : "obj-65",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 321.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 10",
									"id" : "obj-66",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 303.0, 87.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 9",
									"id" : "obj-67",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 285.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 8",
									"id" : "obj-68",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 267.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 7",
									"id" : "obj-69",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 249.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 6",
									"id" : "obj-70",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 231.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 5",
									"id" : "obj-71",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 213.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 4",
									"id" : "obj-72",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 195.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 3",
									"id" : "obj-73",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 177.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 2",
									"id" : "obj-74",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 159.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "adstatus input 1",
									"id" : "obj-75",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 2,
									"fontsize" : 9.27615,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 259.0, 141.0, 82.0, 17.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-93",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 317.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 411.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-94",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 300.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 393.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-95",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 283.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 375.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-96",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 266.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 357.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-97",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 249.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 339.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-98",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 232.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 321.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-99",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 215.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 303.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-100",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 198.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 285.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-101",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 181.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 267.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-102",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 164.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 249.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-103",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 147.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 231.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-104",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 130.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 213.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-105",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 113.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 195.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-106",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 96.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 177.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-107",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 79.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 159.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "umenu",
									"hint" : "",
									"prototypename" : "Arial9",
									"pattrmode" : 1,
									"arrowlink" : 0,
									"id" : "obj-108",
									"fontname" : "Arial",
									"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"prefix_mode" : 2,
									"numinlets" : 1,
									"presentation_rect" : [ 27.0, 62.0, 61.939552, 17.0 ],
									"types" : [  ],
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
									"numoutlets" : 3,
									"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
									"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
									"fontsize" : 9.27615,
									"outlettype" : [ "int", "", "" ],
									"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
									"patching_rect" : [ 206.0, 141.0, 50.939552, 17.0 ],
									"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
									"presentation" : 1,
									"arrowframe" : 0,
									"items" : [ "Off", ",", 1, "input", ",", 2, "input" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Input Map.",
									"id" : "obj-109",
									"fontname" : "Arial Bold Italic",
									"numinlets" : 1,
									"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
									"presentation_rect" : [ 19.0, 3.0, 68.0, 20.0 ],
									"numoutlets" : 0,
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 11.595187,
									"patching_rect" : [ 386.0, 30.0, 68.0, 20.0 ],
									"presentation" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"prototypename" : "Arial9",
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.0, 25.0, 18.0, 18.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "",
									"prototypename" : "Arial9",
									"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"presentation_rect" : [ 99.0, 23.0, 87.0, 319.0 ],
									"bgcolor" : [ 0.658824, 0.658824, 0.74902, 1.0 ],
									"numoutlets" : 0,
									"shadow" : -1,
									"rounded" : 16,
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"patching_rect" : [ 458.0, 55.0, 20.0, 20.0 ],
									"presentation" : 1,
									"background" : 1,
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "",
									"prototypename" : "Arial9",
									"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
									"id" : "obj-235",
									"numinlets" : 1,
									"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
									"border" : 1,
									"numoutlets" : 0,
									"shadow" : 1,
									"rounded" : 20,
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"patching_rect" : [ 15.0, 15.0, 480.0, 435.0 ],
									"background" : 1,
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "",
									"prototypename" : "Arial9",
									"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
									"id" : "obj-212",
									"numinlets" : 1,
									"presentation_rect" : [ 8.0, 23.0, 87.0, 319.0 ],
									"bgcolor" : [ 0.658824, 0.658824, 0.74902, 1.0 ],
									"numoutlets" : 0,
									"shadow" : -1,
									"rounded" : 16,
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"patching_rect" : [ 735.0, 32.0, 20.0, 20.0 ],
									"presentation" : 1,
									"background" : 1,
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "",
									"prototypename" : "Arial9",
									"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
									"id" : "obj-24",
									"numinlets" : 1,
									"presentation_rect" : [ -0.547028, 0.0, 195.0, 351.0 ],
									"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
									"numoutlets" : 0,
									"shadow" : 1,
									"rounded" : 0,
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"patching_rect" : [ 458.0, 30.0, 20.0, 20.0 ],
									"presentation" : 1,
									"background" : 1,
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"hint" : "",
									"prototypename" : "Arial9",
									"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
									"id" : "obj-236",
									"numinlets" : 1,
									"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
									"border" : 1,
									"numoutlets" : 0,
									"shadow" : 1,
									"rounded" : 20,
									"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
									"patching_rect" : [ 510.0, 15.0, 480.0, 435.0 ],
									"background" : 1,
									"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-237", 0 ],
									"destination" : [ "obj-239", 1 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-84", 0 ],
									"destination" : [ "obj-239", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-239", 0 ],
									"destination" : [ "obj-238", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-147", 0 ],
									"destination" : [ "obj-163", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-163", 0 ],
									"destination" : [ "obj-147", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-148", 0 ],
									"destination" : [ "obj-164", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-164", 0 ],
									"destination" : [ "obj-148", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-149", 0 ],
									"destination" : [ "obj-165", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-165", 0 ],
									"destination" : [ "obj-149", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-150", 0 ],
									"destination" : [ "obj-166", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-166", 0 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-151", 0 ],
									"destination" : [ "obj-167", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-167", 0 ],
									"destination" : [ "obj-151", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-152", 0 ],
									"destination" : [ "obj-168", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-168", 0 ],
									"destination" : [ "obj-152", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-153", 0 ],
									"destination" : [ "obj-169", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-169", 0 ],
									"destination" : [ "obj-153", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-154", 0 ],
									"destination" : [ "obj-170", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-170", 0 ],
									"destination" : [ "obj-154", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-155", 0 ],
									"destination" : [ "obj-171", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-171", 0 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-156", 0 ],
									"destination" : [ "obj-172", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-172", 0 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-157", 0 ],
									"destination" : [ "obj-173", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-173", 0 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-158", 0 ],
									"destination" : [ "obj-174", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-174", 0 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-159", 0 ],
									"destination" : [ "obj-175", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-175", 0 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-160", 0 ],
									"destination" : [ "obj-176", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-176", 0 ],
									"destination" : [ "obj-160", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-161", 0 ],
									"destination" : [ "obj-177", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-177", 0 ],
									"destination" : [ "obj-161", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-162", 0 ],
									"destination" : [ "obj-178", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-178", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 0 ],
									"destination" : [ "obj-162", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 1 ],
									"destination" : [ "obj-161", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 2 ],
									"destination" : [ "obj-160", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 3 ],
									"destination" : [ "obj-159", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 4 ],
									"destination" : [ "obj-158", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 5 ],
									"destination" : [ "obj-157", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 6 ],
									"destination" : [ "obj-156", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 7 ],
									"destination" : [ "obj-155", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 8 ],
									"destination" : [ "obj-154", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 9 ],
									"destination" : [ "obj-153", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 10 ],
									"destination" : [ "obj-152", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 11 ],
									"destination" : [ "obj-151", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 12 ],
									"destination" : [ "obj-150", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 13 ],
									"destination" : [ "obj-149", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 14 ],
									"destination" : [ "obj-148", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-144", 15 ],
									"destination" : [ "obj-147", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 0 ],
									"destination" : [ "obj-142", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 1 ],
									"destination" : [ "obj-141", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 2 ],
									"destination" : [ "obj-133", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 3 ],
									"destination" : [ "obj-132", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 4 ],
									"destination" : [ "obj-131", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 5 ],
									"destination" : [ "obj-130", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 6 ],
									"destination" : [ "obj-129", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 7 ],
									"destination" : [ "obj-128", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 8 ],
									"destination" : [ "obj-127", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 9 ],
									"destination" : [ "obj-134", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 10 ],
									"destination" : [ "obj-135", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 11 ],
									"destination" : [ "obj-136", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 12 ],
									"destination" : [ "obj-137", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 13 ],
									"destination" : [ "obj-138", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 14 ],
									"destination" : [ "obj-139", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-143", 15 ],
									"destination" : [ "obj-140", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-146", 0 ],
									"destination" : [ "obj-143", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-146", 0 ],
									"destination" : [ "obj-144", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-93", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-93", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-94", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-95", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-96", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-97", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-97", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-98", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-98", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-66", 0 ],
									"destination" : [ "obj-99", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-101", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-101", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-102", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-102", 0 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-70", 0 ],
									"destination" : [ "obj-103", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-103", 0 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-104", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-104", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-105", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-105", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-106", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-107", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-107", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-108", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-108", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 2 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 3 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 4 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 5 ],
									"destination" : [ "obj-70", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 6 ],
									"destination" : [ "obj-69", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 7 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 8 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 9 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 10 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 11 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 12 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 13 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 14 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 15 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 4 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 5 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 6 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 7 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 8 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 9 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 10 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 11 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 12 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 13 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 14 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 15 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Arial",
						"default_fontface" : 0,
						"globalpatchername" : "",
						"default_fontname" : "Arial",
						"fontface" : 0,
						"fontsize" : 9.0,
						"default_fontsize" : 9.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "open",
					"gradient" : 0,
					"ignoreclick" : 0,
					"id" : "obj-113",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numoutlets" : 1,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 459.0, 34.0, 16.0 ],
					"presentation" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"ignoreclick" : 0,
					"id" : "obj-112",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 479.0, 48.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "",
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"ignoreclick" : 0,
					"texton" : "Button On",
					"truncate" : 1,
					"align" : 1,
					"id" : "obj-83",
					"fontname" : "Arial Bold",
					"spacing_y" : 4.0,
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 0,
					"numinlets" : 1,
					"tosymbol" : 1,
					"presentation_rect" : [ 151.0, 353.0, 96.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"mode" : 0,
					"outputmode" : 1,
					"fontlink" : 0,
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 2,
					"numoutlets" : 3,
					"rounded" : 14.0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"text" : "I/O Mappings",
					"bgovercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"fontsize" : 9.27615,
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 425.0, 435.0, 100.0, 20.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"presentation" : 1,
					"background" : 0,
					"bgoveroncolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "",
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"ignoreclick" : 0,
					"texton" : "Button On",
					"truncate" : 1,
					"align" : 1,
					"id" : "obj-81",
					"fontname" : "Arial Bold",
					"spacing_y" : 4.0,
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 0,
					"numinlets" : 1,
					"tosymbol" : 1,
					"presentation_rect" : [ 18.0, 353.0, 111.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"mode" : 0,
					"outputmode" : 1,
					"fontlink" : 0,
					"textovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"border" : 2,
					"numoutlets" : 3,
					"rounded" : 14.0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"text" : "Audio Driver Setup",
					"bgovercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"fontsize" : 9.27615,
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 425.0, 375.0, 100.0, 20.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"presentation" : 1,
					"background" : 0,
					"bgoveroncolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Channel 2",
					"ignoreclick" : 1,
					"id" : "obj-29",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 134.0, 329.0, 55.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 359.0, 450.0, 55.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Channel 1",
					"ignoreclick" : 1,
					"id" : "obj-75",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 134.0, 310.0, 55.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 239.0, 450.0, 55.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "DSP",
					"ignoreclick" : 1,
					"id" : "obj-82",
					"fontname" : "Arial Bold Italic",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 205.0, 8.0, 40.0, 22.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 13.914225,
					"patching_rect" : [ 329.0, 26.0, 39.0, 22.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Hz",
					"ignoreclick" : 1,
					"id" : "obj-49",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 223.0, 156.0, 22.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 234.0, 217.0, 22.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hint" : "",
					"ignoreclick" : 0,
					"id" : "obj-108",
					"hidden" : 0,
					"numinlets" : 1,
					"fgcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"presentation_rect" : [ 226.0, 226.0, 11.0, 11.0 ],
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ],
					"numoutlets" : 1,
					"blinkcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 614.0, 238.0, 19.0, 19.0 ],
					"outlinecolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Overload",
					"ignoreclick" : 1,
					"id" : "obj-106",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 167.0, 224.0, 53.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 563.0, 240.0, 51.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"hint" : "",
					"orientation" : 0,
					"bordercolor" : [ 0.694118, 0.694118, 0.694118, 0.0 ],
					"ignoreclick" : 1,
					"mult" : 1.0,
					"id" : "obj-104",
					"min" : 0.0,
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 146.0, 210.0, 100.620918, 10.0 ],
					"bgcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"floatoutput" : 0,
					"numoutlets" : 1,
					"knobcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"relative" : 0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 455.0, 285.0, 126.0, 10.0 ],
					"presentation" : 1,
					"background" : 0,
					"size" : 101.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "substitute append text",
					"ignoreclick" : 0,
					"id" : "obj-101",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 515.0, 52.0, 113.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus optionname 1",
					"ignoreclick" : 0,
					"id" : "obj-102",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 515.0, 30.0, 116.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "",
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 1,
					"texton" : "Button On",
					"truncate" : 1,
					"align" : 0,
					"id" : "obj-103",
					"fontname" : "Arial",
					"spacing_y" : 4.0,
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 0,
					"numinlets" : 1,
					"tosymbol" : 1,
					"presentation_rect" : [ 14.0, 66.0, 91.0, 20.0 ],
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"mode" : 0,
					"outputmode" : 1,
					"fontlink" : 0,
					"textovercolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"border" : 0,
					"numoutlets" : 3,
					"rounded" : 0.0,
					"underline" : 0,
					"fontface" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"text" : "Input Source",
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"fontsize" : 9.27615,
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 515.0, 74.0, 112.0, 17.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"presentation" : 1,
					"background" : 0,
					"bgoveroncolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "substitute append text",
					"ignoreclick" : 0,
					"id" : "obj-20",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 650.0, 52.0, 113.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus optionname 2",
					"ignoreclick" : 0,
					"id" : "obj-45",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 650.0, 30.0, 116.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "",
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 1,
					"texton" : "Button On",
					"truncate" : 1,
					"align" : 0,
					"id" : "obj-96",
					"fontname" : "Arial",
					"spacing_y" : 4.0,
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 0,
					"numinlets" : 1,
					"tosymbol" : 1,
					"presentation_rect" : [ 14.0, 84.0, 91.0, 20.0 ],
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"mode" : 0,
					"outputmode" : 1,
					"fontlink" : 0,
					"textovercolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"border" : 0,
					"numoutlets" : 3,
					"rounded" : 0.0,
					"underline" : 0,
					"fontface" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"text" : "Output Destination",
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"fontsize" : 9.27615,
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 650.0, 74.0, 112.0, 17.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"presentation" : 1,
					"background" : 0,
					"bgoveroncolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "substitute append text",
					"ignoreclick" : 0,
					"id" : "obj-97",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 380.0, 52.0, 113.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus optionname 0",
					"ignoreclick" : 0,
					"id" : "obj-13",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 380.0, 30.0, 116.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rdsp driver setup",
					"linecount" : 2,
					"gradient" : 0,
					"ignoreclick" : 0,
					"id" : "obj-89",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"numoutlets" : 1,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "" ],
					"patching_rect" : [ 425.0, 399.0, 85.0, 28.0 ],
					"presentation" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Signal Vector Size",
					"ignoreclick" : 1,
					"id" : "obj-46",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 156.0, 91.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 77.0, 255.0, 91.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "I/O Vector Size",
					"ignoreclick" : 1,
					"id" : "obj-42",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 138.0, 75.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 79.0, 195.0, 75.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route clear append",
					"ignoreclick" : 0,
					"id" : "obj-59",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 3,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 676.0, 238.0, 98.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route clear append",
					"ignoreclick" : 0,
					"id" : "obj-55",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 3,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 305.0, 298.0, 98.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route clear append",
					"ignoreclick" : 0,
					"id" : "obj-50",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 3,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 166.0, 298.0, 98.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus output 2",
					"ignoreclick" : 0,
					"id" : "obj-79",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 305.0, 471.0, 91.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-80",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 189.0, 328.0, 58.939552, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 305.0, 450.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ "Off", ",", 1, "output", ",", 2, "output" ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Channel 2",
					"ignoreclick" : 1,
					"id" : "obj-73",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 329.0, 55.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 359.0, 390.0, 55.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus input 2",
					"ignoreclick" : 0,
					"id" : "obj-76",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 305.0, 411.0, 84.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-77",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 70.0, 328.0, 58.939552, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 305.0, 390.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ "Off", ",", 1, "input", ",", 2, "input" ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Channel 1",
					"ignoreclick" : 1,
					"id" : "obj-67",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 310.0, 55.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 239.0, 390.0, 55.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus output 1",
					"ignoreclick" : 0,
					"id" : "obj-68",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 185.0, 471.0, 91.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-69",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 189.0, 310.0, 58.939552, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 185.0, 450.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ "Off", ",", 1, "output", ",", 2, "output" ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus input 1",
					"ignoreclick" : 0,
					"id" : "obj-70",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 185.0, 411.0, 84.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-71",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 70.0, 310.0, 58.939552, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 185.0, 390.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ "Off", ",", 1, "input", ",", 2, "input" ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Vector Optimization",
					"ignoreclick" : 1,
					"id" : "obj-63",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 260.0, 97.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 695.0, 195.0, 97.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus optimize",
					"ignoreclick" : 0,
					"id" : "obj-64",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 676.0, 216.0, 92.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bordercolor" : [ 0.741176, 0.741176, 0.803922, 0.74902 ],
					"ignoreclick" : 0,
					"id" : "obj-65",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 125.0, 260.0, 15.0, 15.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.501961, 0.74902 ],
					"numoutlets" : 1,
					"checkedcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 676.0, 195.0, 16.0, 16.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "in Audio Interrupt",
					"linecount" : 2,
					"ignoreclick" : 1,
					"id" : "obj-60",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 140.0, 175.0, 88.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 324.0, 255.0, 51.0, 28.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus takeover",
					"ignoreclick" : 0,
					"id" : "obj-61",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 305.0, 276.0, 93.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bordercolor" : [ 0.741176, 0.741176, 0.803922, 0.74902 ],
					"ignoreclick" : 0,
					"id" : "obj-62",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 227.0, 175.0, 15.0, 15.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.501961, 0.74902 ],
					"numoutlets" : 1,
					"checkedcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 305.0, 255.0, 16.0, 16.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Scheduler in Overdrive",
					"ignoreclick" : 1,
					"id" : "obj-56",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 175.0, 110.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 185.0, 255.0, 112.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus overdrive",
					"ignoreclick" : 0,
					"id" : "obj-57",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 166.0, 276.0, 96.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"bordercolor" : [ 0.741176, 0.741176, 0.803922, 0.74902 ],
					"ignoreclick" : 0,
					"id" : "obj-58",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 125.0, 175.0, 15.0, 15.0 ],
					"bgcolor" : [ 0.352941, 0.352941, 0.501961, 0.74902 ],
					"numoutlets" : 1,
					"checkedcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 166.0, 255.0, 16.0, 16.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "CPU Limit (%)",
					"ignoreclick" : 1,
					"id" : "obj-51",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 224.0, 72.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 595.0, 195.0, 70.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus cpulimit",
					"ignoreclick" : 0,
					"id" : "obj-52",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 545.0, 216.0, 88.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "",
					"hbgcolor" : [ 0.372549, 0.352941, 0.439216, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"format" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.6,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-53",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 109.0, 224.0, 30.848198, 17.0 ],
					"bgcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"cantchange" : 0,
					"numoutlets" : 2,
					"minimum" : 0,
					"fontface" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.27615,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 545.0, 195.0, 28.0, 17.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"triangle" : 1,
					"maximum" : 100,
					"presentation" : 1,
					"outputonclick" : 0,
					"background" : 0,
					"mouseup" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus sigvs",
					"ignoreclick" : 0,
					"id" : "obj-47",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 35.0, 276.0, 77.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-48",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 108.0, 155.0, 44.939552, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 35.0, 255.0, 43.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ 1, ",", 2, ",", 4, ",", 8, ",", 16, ",", 32, ",", 64, ",", 128, ",", 256, ",", 512, ",", 1024, ",", 2048, ",", 4096, ",", 8192 ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus iovs",
					"ignoreclick" : 0,
					"id" : "obj-43",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 35.0, 216.0, 71.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-44",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 108.0, 137.0, 44.939552, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 35.0, 195.0, 43.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ 16, ",", 32, ",", 64, ",", 128, ",", 256, ",", 512, ",", 1024, ",", 2048 ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Output Channels",
					"ignoreclick" : 1,
					"id" : "obj-38",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 134.0, 291.0, 85.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 85.0, 472.0, 85.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Input Channels",
					"ignoreclick" : 1,
					"id" : "obj-37",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 291.0, 78.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 85.0, 412.0, 78.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"format" : 0,
					"ignoreclick" : 1,
					"triscale" : 1.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-34",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 217.0, 291.0, 31.0, 17.0 ],
					"bgcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"cantchange" : 0,
					"numoutlets" : 2,
					"minimum" : "<none>",
					"fontface" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.27615,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 35.0, 472.0, 28.0, 17.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"triangle" : 0,
					"maximum" : "<none>",
					"presentation" : 1,
					"outputonclick" : 0,
					"background" : 0,
					"mouseup" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus numoutputs",
					"ignoreclick" : 0,
					"id" : "obj-35",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 35.0, 450.0, 107.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"format" : 0,
					"ignoreclick" : 1,
					"triscale" : 1.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-31",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 98.0, 291.0, 31.0, 17.0 ],
					"bgcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"cantchange" : 0,
					"numoutlets" : 2,
					"minimum" : "<none>",
					"fontface" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.27615,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 35.0, 412.0, 28.0, 17.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"triangle" : 0,
					"maximum" : "<none>",
					"presentation" : 1,
					"outputonclick" : 0,
					"background" : 0,
					"mouseup" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus numinputs",
					"ignoreclick" : 0,
					"id" : "obj-33",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 35.0, 390.0, 101.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Sampling Rate",
					"ignoreclick" : 1,
					"id" : "obj-39",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 168.0, 138.0, 75.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 218.0, 195.0, 75.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus sr",
					"ignoreclick" : 0,
					"id" : "obj-40",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 170.0, 216.0, 62.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-41",
					"fontname" : "Arial Bold",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 168.0, 155.0, 55.939552, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 170.0, 195.0, 43.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ 96000, ",", 48000, ",", 44100 ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Function Calls",
					"ignoreclick" : 1,
					"id" : "obj-32",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 143.0, 242.0, 74.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 668.0, 310.0, 74.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"format" : 0,
					"ignoreclick" : 1,
					"triscale" : 1.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 217.0, 242.0, 31.0, 17.0 ],
					"bgcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"cantchange" : 0,
					"numoutlets" : 2,
					"minimum" : "<none>",
					"fontface" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.27615,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 671.0, 292.0, 28.0, 17.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"triangle" : 0,
					"maximum" : "<none>",
					"presentation" : 1,
					"outputonclick" : 0,
					"background" : 0,
					"mouseup" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Signals Used",
					"linecount" : 2,
					"ignoreclick" : 1,
					"id" : "obj-26",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 242.0, 69.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 602.0, 310.0, 62.0, 28.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"hint" : "",
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"format" : 0,
					"ignoreclick" : 1,
					"triscale" : 1.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 109.0, 242.0, 31.0, 17.0 ],
					"bgcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"cantchange" : 0,
					"numoutlets" : 2,
					"minimum" : "<none>",
					"fontface" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.27615,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 620.0, 292.0, 28.0, 17.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"triangle" : 0,
					"maximum" : "<none>",
					"presentation" : 1,
					"outputonclick" : 0,
					"background" : 0,
					"mouseup" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus info",
					"ignoreclick" : 0,
					"id" : "obj-28",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 620.0, 270.0, 70.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"ignoreclick" : 0,
					"id" : "obj-25",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 455.0, 195.0, 53.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "CPU Utilization (%)",
					"ignoreclick" : 1,
					"id" : "obj-23",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 206.0, 97.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 506.0, 262.0, 96.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"hint" : "",
					"hbgcolor" : [ 0.372549, 0.360784, 0.501961, 0.74902 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"ignoreclick" : 1,
					"triscale" : 0.7,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-22",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 109.0, 206.0, 31.0, 17.0 ],
					"bgcolor" : [ 0.368627, 0.360784, 0.501961, 0.74902 ],
					"cantchange" : 0,
					"numoutlets" : 2,
					"numdecimalplaces" : 0,
					"minimum" : "<none>",
					"fontface" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.27615,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 455.0, 261.0, 30.0, 17.0 ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"triangle" : 0,
					"maximum" : "<none>",
					"presentation" : 1,
					"outputonclick" : 0,
					"background" : 0,
					"mouseup" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus cpu",
					"ignoreclick" : 0,
					"id" : "obj-15",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 455.0, 239.0, 70.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 250",
					"ignoreclick" : 0,
					"id" : "obj-8",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 1,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 455.0, 217.0, 58.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"hint" : "",
					"bordercolor" : [ 0.6, 0.6, 0.6, 0.0 ],
					"spacing_x" : 4.0,
					"bgoncolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 1,
					"texton" : "Button On",
					"truncate" : 1,
					"align" : 0,
					"id" : "obj-18",
					"fontname" : "Arial",
					"spacing_y" : 4.0,
					"textoncolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"hidden" : 0,
					"numinlets" : 1,
					"tosymbol" : 1,
					"presentation_rect" : [ 14.0, 48.0, 91.0, 20.0 ],
					"bgcolor" : [ 0.74902, 0.74902, 0.74902, 0.0 ],
					"mode" : 0,
					"outputmode" : 1,
					"fontlink" : 0,
					"textovercolor" : [ 0.101961, 0.101961, 0.101961, 0.0 ],
					"border" : 0,
					"numoutlets" : 3,
					"rounded" : 0.0,
					"underline" : 0,
					"fontface" : 1,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"text" : "Input Device",
					"bgovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"fontsize" : 9.27615,
					"textoveroncolor" : [ 0.9, 0.9, 0.9, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 380.0, 74.0, 112.0, 17.0 ],
					"borderoncolor" : [ 0.4, 0.4, 0.4, 1.0 ],
					"presentation" : 1,
					"background" : 0,
					"bgoveroncolor" : [ 0.5, 0.5, 0.5, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Driver",
					"ignoreclick" : 1,
					"id" : "obj-17",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"presentation_rect" : [ 14.0, 32.0, 37.0, 17.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"patching_rect" : [ 299.0, 105.0, 37.0, 17.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"hint" : "",
					"text" : "Audio",
					"ignoreclick" : 1,
					"id" : "obj-16",
					"fontname" : "Arial Bold",
					"hidden" : 0,
					"numinlets" : 1,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 14.0, 12.0, 44.0, 20.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"numoutlets" : 0,
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 11.595187,
					"patching_rect" : [ 328.0, 50.0, 44.0, 20.0 ],
					"presentation" : 1,
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus option 2",
					"ignoreclick" : 0,
					"id" : "obj-4",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 650.0, 126.0, 90.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-5",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 108.0, 85.0, 139.939545, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 650.0, 105.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : "Internal Speakers",
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus option 1",
					"ignoreclick" : 0,
					"id" : "obj-2",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 515.0, 126.0, 90.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-3",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 108.0, 67.0, 139.939545, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 515.0, 105.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : "Internal microphone",
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus option 0",
					"ignoreclick" : 0,
					"id" : "obj-11",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 380.0, 126.0, 90.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-12",
					"fontname" : "Arial",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 108.0, 49.0, 139.939545, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 380.0, 105.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ "Built-in Microphone", ",", "Built-in Input" ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus driver",
					"ignoreclick" : 0,
					"id" : "obj-9",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 245.0, 126.0, 79.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-10",
					"fontname" : "Arial Bold",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 108.0, 31.0, 139.939545, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 245.0, 105.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ "None", ",", "CoreAudio", "Built-in Output", ",", "NonRealTime", ",", "ad_rewire" ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "adstatus switch",
					"ignoreclick" : 0,
					"id" : "obj-1",
					"fontname" : "Arial",
					"hidden" : 0,
					"numinlets" : 2,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"fontface" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : 10.435669,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 245.0, 51.0, 82.0, 18.0 ],
					"presentation" : 0,
					"background" : 0,
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "",
					"prototypename" : "Arial9",
					"showdotfiles" : 0,
					"discolor" : [ 0.43, 0.43, 0.43, 1.0 ],
					"pattrmode" : 1,
					"togcolor" : [ 0.55, 0.55, 0.55, 1.0 ],
					"ignoreclick" : 0,
					"arrowlink" : 0,
					"align" : 0,
					"id" : "obj-36",
					"fontname" : "Arial Bold",
					"hltcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"hidden" : 0,
					"prefix_mode" : 2,
					"depth" : 0,
					"numinlets" : 1,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"presentation_rect" : [ 108.0, 13.0, 44.939552, 17.0 ],
					"types" : [  ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.74902 ],
					"autopopulate" : 0,
					"numoutlets" : 3,
					"menumode" : 0,
					"rounded" : 8,
					"arrowcolor" : [ 0.694118, 0.694118, 0.694118, 1.0 ],
					"underline" : 0,
					"fontface" : 0,
					"textcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"fontsize" : 9.27615,
					"prefix" : "",
					"outlettype" : [ "int", "", "" ],
					"arrowbgcolor" : [ 0.941176, 0.941176, 0.941176, 0.74902 ],
					"patching_rect" : [ 245.0, 30.0, 50.939552, 17.0 ],
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.129412 ],
					"presentation" : 1,
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"background" : 0,
					"arrowframe" : 0,
					"items" : [ "Off", ",", "On" ],
					"arrow" : 1,
					"labelclick" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-105",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 146.0, 210.130554, 101.312851, 10.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 7,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 456.0, 296.0, 124.0, 4.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-19",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 217.0, 242.130554, 31.0, 17.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 9,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 701.0, 295.130554, 19.0, 12.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-95",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 110.0, 206.130554, 30.0, 17.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 9,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 486.0, 264.130554, 19.0, 12.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-92",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 217.0, 291.130554, 31.0, 17.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 9,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 64.0, 475.0, 19.0, 12.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-74",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 98.0, 291.130554, 31.0, 17.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 9,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 64.0, 415.0, 19.0, 12.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-54",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 109.0, 242.130554, 31.0, 17.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 9,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 650.0, 295.130554, 19.0, 12.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-282",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 109.0, 224.130554, 31.0, 17.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 9,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 574.0, 197.0, 19.0, 12.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-86",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 13.0, 285.0, 243.0, 94.0 ],
					"bgcolor" : [ 0.658824, 0.658824, 0.74902, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 16,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 39.0, 501.0, 20.0, 20.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-21",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 13.0, 200.0, 243.0, 81.0 ],
					"bgcolor" : [ 0.658824, 0.658824, 0.74902, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 16,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 365.0, 264.0, 20.0, 20.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-14",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 12.0, 131.0, 243.0, 65.0 ],
					"bgcolor" : [ 0.658824, 0.658824, 0.74902, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 16,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 316.0, 194.0, 20.0, 20.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-212",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 12.0, 7.0, 243.0, 120.0 ],
					"bgcolor" : [ 0.658824, 0.658824, 0.74902, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : -1,
					"rounded" : 16,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 866.0, 122.0, 20.0, 20.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.360784, 0.360784, 0.360784, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-24",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.452972, 0.0, 267.0, 390.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 1.0 ],
					"mode" : 0,
					"border" : 0,
					"numoutlets" : 0,
					"shadow" : 1,
					"rounded" : 0,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 139.0, 74.0, 20.0, 20.0 ],
					"presentation" : 1,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-107",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
					"mode" : 0,
					"border" : 1,
					"numoutlets" : 0,
					"shadow" : 1,
					"rounded" : 20,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 20.0, 180.0, 405.0, 165.0 ],
					"presentation" : 0,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-88",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
					"mode" : 0,
					"border" : 1,
					"numoutlets" : 0,
					"shadow" : 1,
					"rounded" : 20,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 230.0, 15.0, 663.0, 151.0 ],
					"presentation" : 0,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-109",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
					"mode" : 0,
					"border" : 1,
					"numoutlets" : 0,
					"shadow" : 1,
					"rounded" : 20,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 440.0, 180.0, 360.0, 165.0 ],
					"presentation" : 0,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"hint" : "",
					"prototypename" : "Arial9",
					"bordercolor" : [ 0.670588, 0.670588, 0.74902, 1.0 ],
					"ignoreclick" : 1,
					"angle" : 0.0,
					"id" : "obj-110",
					"hidden" : 0,
					"numinlets" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"bgcolor" : [ 0.741176, 0.741176, 0.803922, 0.0 ],
					"mode" : 0,
					"border" : 1,
					"numoutlets" : 0,
					"shadow" : 1,
					"rounded" : 20,
					"grad1" : [ 0.847059, 0.847059, 0.847059, 1.0 ],
					"patching_rect" : [ 20.0, 360.0, 525.0, 180.0 ],
					"presentation" : 0,
					"background" : 1,
					"grad2" : [ 0.741176, 0.741176, 0.803922, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 780.5, 147.0, 768.0, 147.0, 768.0, 101.0, 780.5, 101.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-112", 0 ],
					"destination" : [ "obj-114", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-113", 0 ],
					"destination" : [ "obj-112", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-113", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 554.5, 237.0, 542.0, 237.0, 542.0, 191.0, 554.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 1 ],
					"destination" : [ "obj-108", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-97", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-97", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 44.5, 297.0, 32.0, 297.0, 32.0, 251.0, 44.5, 251.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 44.5, 237.0, 32.0, 237.0, 32.0, 191.0, 44.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 389.5, 147.0, 377.0, 147.0, 377.0, 101.0, 389.5, 101.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 254.5, 147.0, 242.0, 147.0, 242.0, 101.0, 254.5, 101.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 254.5, 72.0, 242.0, 72.0, 242.0, 26.0, 254.5, 26.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 524.5, 147.0, 512.0, 147.0, 512.0, 101.0, 524.5, 101.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 659.5, 147.0, 647.0, 147.0, 647.0, 101.0, 659.5, 101.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 179.5, 237.0, 167.0, 237.0, 167.0, 191.0, 179.5, 191.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-70", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 194.5, 432.0, 182.0, 432.0, 182.0, 386.0, 194.5, 386.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-70", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-76", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 314.5, 432.0, 302.0, 432.0, 302.0, 386.0, 314.5, 386.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 194.5, 492.0, 182.0, 492.0, 182.0, 446.0, 194.5, 446.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 314.5, 492.0, 302.0, 492.0, 302.0, 446.0, 314.5, 446.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-96", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-102", 0 ],
					"destination" : [ "obj-101", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-140", 0 ],
					"destination" : [ "obj-142", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-140", 0 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-140", 1 ],
					"hidden" : 1,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 2 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 254.5, 320.0, 163.0, 320.0, 163.0, 252.0, 175.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 2 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 393.5, 320.0, 302.0, 320.0, 302.0, 252.0, 314.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 2 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 764.5, 260.0, 673.0, 260.0, 673.0, 192.0, 685.5, 192.0 ]
				}

			}
 ]
	}

}
