autowatch = 1;

#include "swirly/util/speedlimit.js"
#include "swirly/max/inlets.js"
#include "swirly/max/outlets.js"

Max.SetOutlets(['output', 'Inputs to the left inlet appear here, speed limited.'],
               ['queuesize', 'The current size of the speedlimit queue.']);

var _speedlim = new Util.Speedlimit(Max.ListOut.output, Max.ListOut.queuesize,
                                    jsarguments[1]);

Max.SetInlets(['queue', _speedlim.Output,
               'Inputs to here appear at the left outlet, speed limited.'],

              ['speed', _speedlim.SetLimit,
               'Set the minimum time between inputs, in millseconds'],

              ['clear', _speedlim.Clear,
               'Any input here clears the speedlimit queue.']);

post('Speedlimit set to ' + _speedlim.limit + 'ms\n');