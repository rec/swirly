On the software representation of DMX lighting instruments.
============================

Introduction
----------------------

Lighting control programming has been distinguished by more practical than
theoretical work - but a little attention to the underpinnings might be very
productive.  This article presents an elegant and fairly minimal functional
decomposition of a DMX lighting setup into four key component classes.


On Mutability
------------------

Of key importance in all programming is the concept of *mutability* - state
data, stored data that can be changed.

You can't program without mutable data, of course - but if there's
mutability everywhere, it makes systematic bugs where the problem is in the
whole system and not one subsystem increasingly likely and increasingly
difficult to track down.

Having variable data everywhere makes reasoning about even a moderate-sized
system really hard.  Programming is hard enough without spaghetti data!

So it is very important to keep tight control over the places in your program
where there is a mutable state - and conversely, if you can say that a class is
"immutable", that it never changes state, it makes reasoning about that class
really simple.


Instrument Definition
----------------------

An instrument *Definition* describes a whole class of lighting instruments by
using *data* (basically, JSON) and *methods* (functions you can call).

There are data and methods common to all Definitions, but individual Definitions
can also have their own custom data and methods.

Definitions are immutable.

EXAMPLE:

"The Gantom Precision 3w RGB DMX Floodlight" (henceforth "Gantom Precision" in
this document).


Instrument Info
--------------

Instrument *Info* describes one specific lighting instrument - describes a
specific embodiment of an instrument Definition.

An *Info* only has data, no methods, and is immutable.

Often, the Info is just the Definition, plus a specific channel offset, but it's
perfectly reasonable to attach other properties to Info, for example to
represent physical, non-DMX settings on the instrument itself - but remember
that these properties have to be immutable over the lifetime of a show.

EXAMPLE:

"The Gantom Precision on DMX channel 17."


Instrument Instance
--------------

You were waiting for mutable data - and here it is.  An instrument *Instance* is
the mutable representation of the state of an actual instrument.  Here's where
you send your DMX commands, where you put properties you want to change, and
do pretty well everything that makes your show go boom.

An Instance contains an Info, as well as other mutable properties
like *enabled*, and immutable properties like *name* and  *type*.  An instance
also has methods, depending on its type.

EXAMPLE:

The instrument named "gantom 2".


Instrument Bank
--------------

A *Bank* is just a named collection of Instances or Banks. A
Bank is immutable but of course you can change the mutable Instances.

There's an additional condition on Banks that they can't contain the same
instrument Info in two places - but that would mean two different programs
trying to control the same physical instrument, which is "obviously bad".

There is a singleton "main" Bank - so it makes sense to talk about "the bank"
and the addresses of all your instruments are quoted relative to "the bank".


The World
----------

*The World* is the top level of the whole system and it's a singleton - there's
exactly one existing at all times.

The World contains Banks, and it's mutable, so you can load in new Banks (and
possibly have other World-relevant data in the future).

It's very likely that you'd have one Bank for a specific show, and you wouldn't
expect to actually change the World during a show.


A Feature Table
------------------

|    Name    |  Mutable?  |  Has methods?  |  Singleton?  |
|------------|------------|----------------|--------------|
| Definition |            |      yes       |              |
|    Info    |            |                |              |
|  Instance  |    yes     |      yes       |              |
|    Bank    |            |                |              |
|   World    |    yes     |                |      yes     |
