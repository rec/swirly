{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 5,
			"minor" : 1,
			"revision" : 9
		}
,
		"rect" : [ 537.0, 217.0, 716.0, 371.0 ],
		"bglocked" : 0,
		"defrect" : [ 537.0, 217.0, 716.0, 371.0 ],
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
					"maxclass" : "comment",
					"text" : "This contains the decoded messages from the Softstep™.",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 186.0, 298.0, 195.0, 34.0 ],
					"patching_rect" : [ 12.0, 335.0, 179.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-112",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Clears display, scrolling and LEDs",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 335.0, 168.0, 150.0, 34.0 ],
					"patching_rect" : [ 50.0, 158.0, 150.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-110",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Re-initializes system settings",
					"linecount" : 2,
					"presentation_linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 336.0, 198.0, 122.0, 34.0 ],
					"patching_rect" : [ 75.0, 123.0, 92.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-108",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "init",
					"textcolor" : [ 0.109804, 0.717647, 0.0, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 20.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 274.0, 203.0, 56.0, 27.0 ],
					"patching_rect" : [ 185.0, 125.0, 53.0, 27.0 ],
					"presentation" : 1,
					"id" : "obj-106",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Softstep™ Controller ",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 14.0,
					"presentation_rect" : [ 236.0, 6.0, 165.0, 23.0 ],
					"patching_rect" : [ 538.0, 359.0, 156.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-105",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tom Swirly's",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 2,
					"fontsize" : 14.0,
					"presentation_rect" : [ 155.0, 6.0, 86.0, 23.0 ],
					"patching_rect" : [ 561.0, 329.0, 88.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-104",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Period:",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 49.0, 265.0, 78.0, 20.0 ],
					"patching_rect" : [ 498.0, 230.0, 49.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-101",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "milliseconds",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 141.0, 265.0, 78.0, 20.0 ],
					"patching_rect" : [ 593.0, 230.0, 76.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-100",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- Type any text and press return",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 348.0, 47.0, 193.0, 20.0 ],
					"patching_rect" : [ 357.0, 402.0, 107.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-98",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "System",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 12.0,
					"presentation_rect" : [ 398.0, 89.0, 86.0, 20.0 ],
					"patching_rect" : [ 214.0, 342.0, 161.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-96",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Backlighting",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 12.0,
					"presentation_rect" : [ 13.0, 178.0, 86.0, 20.0 ],
					"patching_rect" : [ 212.0, 308.0, 161.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-95",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- ...then click one of these buttons.",
					"linecount" : 2,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 142.0, 129.0, 202.0, 20.0 ],
					"patching_rect" : [ 357.0, 133.0, 111.0, 34.0 ],
					"presentation" : 1,
					"id" : "obj-94",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- Set these values...",
					"linecount" : 3,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 166.0, 93.0, 150.0, 20.0 ],
					"patching_rect" : [ 567.0, 22.0, 60.0, 48.0 ],
					"presentation" : 1,
					"id" : "obj-92",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Output",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 12.0,
					"presentation_rect" : [ 13.0, 302.0, 52.0, 20.0 ],
					"patching_rect" : [ 11.0, 313.0, 60.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-90",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Scrolling",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 12.0,
					"presentation_rect" : [ 13.0, 240.0, 70.0, 20.0 ],
					"patching_rect" : [ 503.0, 143.0, 161.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-88",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Display",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 12.0,
					"presentation_rect" : [ 13.0, 46.0, 55.0, 20.0 ],
					"patching_rect" : [ 171.0, 433.0, 161.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-87",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "LEDs",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 12.0,
					"presentation_rect" : [ 13.0, 93.0, 55.0, 20.0 ],
					"patching_rect" : [ 316.0, 25.0, 45.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-86",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Origin",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontface" : 1,
					"fontsize" : 12.0,
					"presentation_rect" : [ 274.0, 247.0, 55.0, 20.0 ],
					"patching_rect" : [ 260.0, 14.0, 46.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-85",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 87.0, 93.0, 40.0, 20.0 ],
					"items" : [ "red", ",", "green", ",", "yellow" ],
					"types" : [  ],
					"patching_rect" : [ 437.0, 24.0, 61.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-81",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"presentation_rect" : [ 275.0, 267.0, 50.0, 20.0 ],
					"maximum" : 1,
					"patching_rect" : [ 262.0, 34.0, 25.996094, 20.0 ],
					"presentation" : 1,
					"id" : "obj-80",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "display $2",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 435.0, 65.0, 18.0 ],
					"id" : "obj-74",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"textcolor" : [ 0.109804, 0.717647, 0.0, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 20.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 272.0, 169.0, 56.0, 27.0 ],
					"patching_rect" : [ 186.0, 160.0, 56.0, 27.0 ],
					"presentation" : 1,
					"id" : "obj-69",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "period $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 543.0, 254.0, 61.0, 18.0 ],
					"id" : "obj-67",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 50,
					"presentation_rect" : [ 93.0, 265.0, 50.0, 20.0 ],
					"maximum" : 2000,
					"patching_rect" : [ 543.0, 230.0, 50.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-65",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "tab",
					"numinlets" : 1,
					"tabs" : [ "forward", "reverse" ],
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 94.0, 212.0, 123.0, 23.0 ],
					"patching_rect" : [ 526.0, 191.0, 134.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-62",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "tab",
					"numinlets" : 1,
					"mode" : 1,
					"tabs" : [ "start", "stop", "freeze" ],
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 95.0, 238.0, 123.0, 23.0 ],
					"patching_rect" : [ 528.0, 169.0, 134.0, 19.0 ],
					"presentation" : 1,
					"id" : "obj-60",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"name" : "onoff.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "standalone" ],
					"presentation_rect" : [ 389.0, 135.0, 122.0, 20.0 ],
					"patching_rect" : [ 381.0, 354.0, 122.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"name" : "onoff.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "tether" ],
					"presentation_rect" : [ 389.0, 112.0, 122.0, 20.0 ],
					"patching_rect" : [ 378.0, 331.0, 122.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"name" : "onoff.maxpat",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [ "el" ],
					"presentation_rect" : [ 98.0, 177.0, 122.0, 20.0 ],
					"patching_rect" : [ 378.0, 309.0, 122.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "led all red flash",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 33.0, 144.0, 110.0, 18.0 ],
					"patching_rect" : [ 251.0, 155.0, 95.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-45",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack led all green off",
					"numinlets" : 4,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.0, 102.0, 216.0, 20.0 ],
					"id" : "obj-44",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 327.0, 55.0, 20.0, 20.0 ],
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "led 2 red flash",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 33.0, 120.0, 107.0, 18.0 ],
					"patching_rect" : [ 251.0, 130.0, 95.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-41",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack led 1 green off",
					"numinlets" : 4,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.0, 78.0, 216.0, 20.0 ],
					"id" : "obj-38",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 130.0, 93.0, 32.0, 20.0 ],
					"items" : [ "off", ",", "on", ",", "blink", ",", "fast", ",", "flash" ],
					"types" : [  ],
					"patching_rect" : [ 503.0, 24.0, 61.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-37",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"fontsize" : 12.0,
					"outlettype" : [ "int", "bang" ],
					"minimum" : 0,
					"presentation_rect" : [ 52.0, 93.0, 33.0, 20.0 ],
					"maximum" : 10,
					"patching_rect" : [ 393.0, 23.0, 33.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-33",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textedit",
					"text" : "A very long message * * * * * * ? ! ? ! ? !     ",
					"numinlets" : 1,
					"lines" : 1,
					"numoutlets" : 4,
					"keymode" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "", "int", "", "" ],
					"presentation_rect" : [ 76.0, 43.0, 272.0, 28.0 ],
					"outputmode" : 1,
					"patching_rect" : [ 100.0, 406.0, 252.0, 20.0 ],
					"presentation" : 1,
					"id" : "obj-24",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "origin $1",
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 262.0, 60.0, 57.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess init",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 280.0, 188.0, 81.0, 20.0 ],
					"id" : "obj-4",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiin",
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 12.0,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 86.0, 203.0, 42.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "9 4 0",
					"textcolor" : [ 1.0, 0.0, 0.07451, 1.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 16.0,
					"outlettype" : [ "" ],
					"presentation_rect" : [ 67.0, 300.0, 115.0, 23.0 ],
					"ignoreclick" : 1,
					"patching_rect" : [ 73.0, 310.0, 115.0, 23.0 ],
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiout",
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 86.0, 263.0, 49.0, 20.0 ],
					"id" : "obj-7",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js softstep.jso",
					"numinlets" : 2,
					"numoutlets" : 3,
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 86.0, 232.0, 184.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Origin says whether you count starting at 0, or starting at 1. \nOrigin applies to LEDs, pads, and sensors.",
					"linecount" : 3,
					"presentation_linecount" : 4,
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"presentation_rect" : [ 338.0, 235.0, 175.0, 62.0 ],
					"patching_rect" : [ 21.0, 35.0, 236.0, 48.0 ],
					"presentation" : 1,
					"id" : "obj-23",
					"fontname" : "Arial"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
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
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-38", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-44", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-74", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-38", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-44", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-1", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 260.5, 291.0, 71.0, 291.0, 71.0, 192.0, 95.5, 192.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
