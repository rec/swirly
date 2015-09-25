What's in a show?
----

Both Shows and Instruments have two parts:
  * An `Info`, describing it before we start.
  * A `State`, describing it during performance.

An `Info` is immutable, whereas a `State` changes as the show progresses.
The `State` always contains the corresponding `Info`.

`Instrument.Info` contains:
  * `names`: a dictionary mapping channels to dictionaries of named DMX values.
  * `channels`: a dictionary mapping channel names to numbers.
  * `splits`: a dictionary mapping names of splits (subsegments of DMX channels)
    to the ranges of DMX information they represent.
  * `test`: a list of settings for the instrument in "test" mode.


`Show.Info` contains:
  * A list of `Instrument`s.
  * `SceneDictionary`.
  * The `CommandDictionary`.
  *  ?anything else?
