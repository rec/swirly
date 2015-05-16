outlets = 1;
inlets = 1;
autowatch = 1;

/*
What does an envelope look like?  It takes an object:

data: [
  [time1, value],
  [time2, value, envelope, arguments],
]
length: time
loops: number
is_float: bool

times are strictly increasing!

*/

function Envelope(args) {
    this.data = args.data;
    this.length = args.length;

    var last = this.data.length - 1;
    if (this.length === undefined)
        this.length = this.data.length ? this.data[last][0] : 0;
    this.loops = args.loops;
    if (this.loops === undefined)
        this.loops = Infinity;
    this.is_float = args.is_float;

    var firstTime = this.data[0][0],
        lastTime = this.data[last][0],
        lastValue = this.data[last][1];

    this.time = 0;
    this.is_running = true;
    var self = this;

    this.run = function(time) {
        /** These is one more segment than there are times - because there is a
            segment before, a segment after, and then one between each time. */
        var loop_number = Math.floor(time / self.length);
        if (self.loops <= loop_number)
            return lastValue;
        time = time % self.length;

        if (time < firstTime)
            return undefined;
        if (time >= lastTime)
            return lastValue;

        for (var i = 1; i < last && time >= self.data[i][0]; ++i);
        var segBefore = self.data[i - 1],
            segAfter = self.data[i],
            segmentTime = segAfter[0] - segBefore[0],
            segmentHeight = segAfter[1] - segBefore[1],
            elapsedRatio = (time - segBefore[0]) / segmentTime,
            value = segBefore[1] + elapsedRatio * segmentHeight;
        return self.is_float ? value : Math.round(value);
        // TODO: fix rounding which is no doubt wrong.
    };
};
