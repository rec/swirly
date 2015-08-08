autowatch = 1;

function test_it() {
	for (var i = this.patcher.firstobject; i; i = i.nextobject) {
		if (i.maxclass != 'metro')
		    continue;
		for (var j in i) {
			post(j, ':', i[j], '\n');
		}
		if (i.maxclass == 'number') {
			i.message('int', 10);
			post('here!!');
		}
		post('...\n');
	}
};

test_it();