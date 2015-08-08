# This Makefile allows you to write your Javascript in separate files and then
# glue it together using the C preprocessor.
#
# (Makefiles use tab characters to introduce command lines.
# Make sure your editor preserves tabs when it saves Makefiles or it
# won't work.  See http://ax.to/make for more info on debugging Makefiles.)
#
# Source Javascript files end in .js.  These are built into a Javascript file
# with the suffix .jso ("Javascript object file") using this Makefile.  It's a
# bad idea to edit .jso files as your edits will be destroyed the next time
# "make" runs.
#
# To prevent issues with including the same file multiple times, each .js that's
# included by another needs to have #ifndef/#define/#endifs guards around it,
# just like in C or C++ headers.  Please see any of the .js files for examples.
#
# By convention, the top-level .js files, files that are never included by
# others, are only found in the js/ subdirectory, and all other files are found
# within the js/swirly/ subdirectory.  The .jso files all end up in the top
# directory, with any Max files.
#
# For best results, I recommend the following directory structure.
#
#   root/            # name this whatever you like.
#     some-project.maxpat
#     some-project.maxhelp
#     some-project.js       # I keep this as short as possible...
#     some-project.jso      # compiled JS
#     js/
#       swirly/             # all my JS
#       # more of JS code goes in here or a subdirectory.
#
# but you can just dump all your stuff in one directory and this Makefile should
# just work.

PREPROCESS=gcc\
 -C\
 -D_COMPILE_DATE="'`date`'"\
 -E\
 -I. -I..\
 -P\
 -Wno-invalid-pp-token\
 -iquote js\
 -x c

# -E means stop after preprocessing.
# -P means don't generate line markers (which confuse Javascript).
# -C means not to discard comments.
# -x c means treat the file as C code.
# -Wno-invalid-pp-token means not to complain about Javascript strings
#     using ' instead of ".
# -D_COMPILE_DATE="'`date`'" sets a preprocessor variable called _COMPILE_DATE
#     to be the current date and time.

MAX4LIVE=~/Music/Ableton/User\ Library/Presets/MIDI\ Effects/Max\ MIDI\ Effect

all:\
 nanolaser\
 show\

 # conductor\
 # crossmatrix\
 # lfo\
 # onscene\
 # speedlimit\
 # tests\
 # wind_mapper\
 # write_lom\
 #


crossmatrix: max/crossmatrix/crossmatrix.jso
nanolaser : max/nanolaser/nanolaser.jso
speedlimit: max/speedlimit/speedlimit.jso
wind_mapper: max/wind_mapper/wind_mapper.jso
tests: max/tests/run_tests.jso

conductor: ${MAX4LIVE}/conductor/conductor.jso
lfo: ${MAX4LIVE}/lfo/lfo.jso
onscene: ${MAX4LIVE}/onscene/onscene.jso
show: ${MAX4LIVE}/show/show.jso
write_lom: ${MAX4LIVE}/write_lom/write_lom.jso

gather:
	cp ${MAX4LIVE}/conductor/*.amxd max4live/conductor/

install:
	mkdir -p ${MAX4LIVE}/conductor/
	rm -f ${MAX4LIVE}/conductor/*.amxd
	cp max4live/conductor/*.amxd ${MAX4LIVE}/conductor/

# Build .jso files from .js.  The first entry in the list is the source file -
# the remaining entry is the list of all possible files it depends on.  This
# means that when any JS file is changed, the whole thing is recompiled, which
# is perfectly reasonable as it's fast.

${MAX4LIVE}/*/%.jso: js/max4live/%.js js/*/*.js js/*/*/*.js js/*/*/*/*.js js/*/*/*/*/*.js
	$(PREPROCESS) $< -o "$@"

max/*/%.jso: js/max/%.js js/*/*.js js/*/*/*.js js/*/*/*/*.js js/*/*/*/*/*.js
	$(PREPROCESS) $< -o "$@"

# Remove all the local .jso files.
clean:
	rm -f ${MAX4LIVE}/*/*.jso Max/*/*.jso
