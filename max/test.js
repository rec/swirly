autowatch = 1;

function toLoggable(x) {
    if (x === null)
        return '<null>';

    if (x === undefined)
        return '<undefined>';

    if (typeof(x) == 'object')
        return JSON.stringify(x);

    return String(x);
}

function maxLog(_) {
    for (var i = 0; i < arguments.length; i++)
        post(toLoggable(arguments[i]));
}

function anything() {
	post('run!\n')
    var tom = this.patcher.getnamed('tom');
    maxLog(tom.getattr('quantize'), '\n');
    tom.message('quantize', [0, 2, 0]);
    maxLog(tom.getattr('quantize'), '\n');
}
