On the Representations of Time Arts Data
====

How do we best represent all _time arts data_ - data relating to audio, music,
show control, internet traffic of all shapes and sizes, or any sort of
expressive data that is attached to or extends across one or more points in
time?

Such data is often fairly repetitive in nature, but needs to be understandable
and editable by the creator, while being still being completely expressive and
inclusive of new structural and ordering ideas.

It needs to be some form of data format that can be easily used by everyone, and
in 2015 that means: Json http://json.org.  Beyond that is where the fun happens.

Design goals:
---

 1. Completeness: ability to potentially represent any sort of time arts
    data (DMX, MIDI, OSC, but also scenes containing multiple pieces of data
    and even multiples types of data).

 2. Active data: use commands that execute at startup or at runtime, and not
    just passive data.

 3. Readability: you shouldn't have to read the documentation to have a good
    idea of what a piece of data means.

 4. Compactness: small data should should have a small representation.

There is a natural synergy between goals 1 and 2.
There is a natural tension between goals 3 and 4.

But there's a reasonable solution.  Let's start with a quick glossary - you
probably know a lot of these but it's good to get our terms straight.


_Dictionary._

A dictionary is a mapping: an assignment of values to names - a Json object, in
other words.  `{"hello": "world"}` is a dictionary of size 1, which maps the
string `"hello"` to the string `"world"`. `{}` is a dictionary of length 0.

Dictionaries can contain other dictionaries.

`{"midi": {"channel": 1. "interface": "mono"}}` is a dictionary of length 1
which contains a dictionary of length 2 with entries `"channel"` and
`"interface"`.

And they can contain _lists_:  `{"midi": {"channel": [1, 3, 5, 7]}`.


_Address_

Everything in a directory is represented by an address - which is just a string
segmented by `.`.

Example addresses are: `"dmx.channel"` or `""` or `"dmx"`. You can use an
address to look up data from a dictionary - for example if you take the
dictionary `{"dmx": {"channel": 3}}` and look up the address `"dmx.channel"`
you'd get...  `3`!


_Commands_

A command is just a Javascript function.

There is some subtlety about the implementation of commands, because your
command might want to do things at three different times:

* when first created at startup
* when executed (during your show)
* or a command might when executed install a handler that's called every time
  some sort of data comes in.

The documentation of each command will make it clear what happens when.


The scene dictionary and the command dictionary.
---

To evaluate time arts data, you need the _command dictionary_ - a dictionary
that maps addresses to commands.

And you need the scene dictionary - a dictionary mapping addresses to time arts
data.


Scenes and commands in time arts data.
----

The "secret sauce" is how we embed commands and scenes in static data.

We do it with two special _prefix_ characters,
 * `$`: load a scene.  (mnemonic: `$` for "scene")
 * `*`: execute a command (mnemonic: `*` for execute)

(The door is still open to other choices (like `@` for apply).)

_Scenes_

When time arts data is read, any string that starts with `$` like
`$midi.channel` is replaced by a reference to a _scene_: a piece of named data
in the scene dictionary.

For lighting people, this is very much like a scene from a lighting board,
except that it can be only a part of a lighting board, or conversely, might
contain settings for both lighting instruments and other devices.

When you're defining scenes, it's fine to refer to scenes at one place that
aren't defined until later, because the lookup doesn't actually go off until the
data is actually used.  And it isn't actually an error to refer to a scene that
doesn't exist - you just get a warning but the program ignores it and continues.

Scenes that somehow contain themselves are of course forbidden - but the program
does a good job of reporting those as an error and continuing to work.

_Commands_

Any string starting with `*` like `*instrument.laser` looks up a command by
address in the command dictionary, and executes it.

For convenience, if the first element in a list is a command, then the rest of
the list is passed to the command:  an example might look like:
`["*laser.instrument", {"color": "red", "pattern": "waves", "xrot": 0.75}]`


In practice.
----

In practice, all shows will share the same command dictionary, because writing a
new element in a command dictionary means writing code, but will have completely
different scenes, because each show is different!

As development progresses, there will no doubt be a lot more concrete examples
and an actual command dictionary...
