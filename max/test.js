autowatch = 1;

var a = [1, 2, 3];

a.forEach(function(value, index) {
	post(index, value, '\n');
	});
	
var f = new File('hello.txt', 'write');
f.open();
f.writeline('hello, world');
f.close();