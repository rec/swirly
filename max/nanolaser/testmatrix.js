
autowatch = 1;

inlets = 1;
outlets = 0;


var p = this.patcher;

// the outputs of the matrixctrl object go to message boxes :
//  xOut1, and xOut2. After sending the 'getcolumn 1' request to theWe read

function bang() {
	this.patcher.applydeep(search);
    var mobj1 = p.getnamed("xMatrix");
    var mobj2 = p.getnamed("mText");
    post("The matrixctrl object called xMatrix =  " + mobj1.getvalueof() + "\n");
    post("The textedit object called xText =  " + mobj2.getvalueof() + "\n");	

}

function search(obj) {
    if (obj.varname != "") {
        post(obj.varname,"\n");
        post("This object’s script name is : " + obj.varname,"(" + obj.maxclass,")\n");
        post(" This object’s patcher name is : " + obj.patcher + "\n");
        post("Selectable for text entry : (" + obj.canhilite,") and ignores clicks : ( " + obj.ignoreclick,")\n");
        post(" . . . . . . . . . . . . . . . . .\n");
    }
}