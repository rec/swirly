{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1234.0, 240.0, 135.0, 97.0 ],
		"bglocked" : 0,
		"defrect" : [ 1234.0, 240.0, 135.0, 97.0 ],
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
					"maxclass" : "message",
					"text" : "compile",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 65.0, 17.0, 52.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "test",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 25.0, 18.0, 32.5, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js tests.jso",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 43.0, 59.0, 67.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontsize" : 12.0,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
