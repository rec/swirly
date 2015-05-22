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
    var last = args.data.length - 1,
        length = args.length,
        loops = args.loops;

    if (length === undefined)
        length = args.data.length ? args.data[last][0] : 0;

    if (loops === undefined)
        loops = 1;

    var firstTime = args.data[0][0],
        lastTime = args.data[last][0],
        lastValue = args.data[last][1];

    this.run = function(time) {
        /** These is one more segment than there are times - because there is a
            segment before, a segment after, and then one between each time. */
        var loop_number = Math.floor(time / length);
        if (loops <= loop_number)
            return lastValue;
        time = time % length;

        if (time < firstTime)
            return undefined;
        if (time >= lastTime)
            return lastValue;

        for (var i = 1; i < last && time >= args.data[i][0]; ++i);

        var segBefore = args.data[i - 1],
            segAfter = args.data[i],
            segmentTime = segAfter[0] - segBefore[0],
            segmentHeight = segAfter[1] - segBefore[1],
            elapsedRatio = (time - segBefore[0]) / segmentTime,
            value = segBefore[1] + elapsedRatio * segmentHeight;
        return value;
    };
};
