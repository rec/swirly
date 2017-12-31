autowatch = 1;
outlets = 0;

var mp = this.patcher;

function bang() {
	find('msg').message('set', 'hello');
	find('bp').message('goodbye');
};

function find(name) {
	for (var i = mp.firstobject; i; i = i.nextobject) {
		if (i.varname == name)
			return i;
	}
};