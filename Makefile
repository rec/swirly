# This Makefile allows you to write your Javascript in separate files and then
# glue it together using the C preprocessor.
#
# Source Javascript files end in .js.  These are built into a Javascript file
# with the suffix .jso ("Javascript object file") using this Makefile.  It's a
# bad idea to edit .jso files as your edits will be destroyed the next time
# make is run.
#
# To prevent issues with including the same file multiple times, each .js that's
# included by another needs to have #ifndef/#define/#endifs guards around it, just
# like in C or C++ headers.  Please see any of the .js files for examples.
#
# By convention, the top-level .js files, files that are never included by
# others, are only found in the js/ subdirectory, and all other files are found
# within the js/swirly/ subdirectory.  The .jso files all end up in the top
# directory, with any Max files.

PREPROCESS=gcc -E -P -C -x c -I. -I..
# -E means stop after preprocessing.
# -P means don't generate line markers (which confuse Javascript).
# -C means not to discard comments.
# -x c means treat the file as C code.

# The path to the Max For Live MIDI effect directory, relative to a user's home
# directory - a place you're likely to want .jso files.
MAX4LIVE_PATH=Library/Application\ Support/Ableton/Library/Presets/MIDI\ Effects/Max\ MIDI\ Effect

# A path your local directory.  You can also copy to other remote machines that
# are mounted by using "/Volumes/YourVolume/Users/$(USER)$(LIVE_PATH)"
MAX4LIVE_LOCAL_PATH="/Users/$(USER)/$(MAX4LIVE_PATH)"

all: run_tests.jso fader.jso megapan.jso swirly-time.jso

# Build .jso files from .js. All results depend on ALL .js files, which is a
# little lame, but the precompiler is very fast...

%.jso: js/%.js js/*.js js/swirly/*.js js/swirly/*/*.js
	$(PREPROCESS) -iquote js $< -o $@

# Remove all the local .jso files.
clean:
	rm *.jso

# Copy .jso files to Max For Live.
"$(MAX4LIVE_LOCAL_PATH)/%.jso": %.jso
	cp "$<" "$@"

"$(MAX4LIVE_LOCAL_PATH)/%.maxpat": %.maxpat
	cp "$<" "$@"

max4live: \
 "$(MAX4LIVE_LOCAL_PATH)/megapan.jso" \
 "$(MAX4LIVE_LOCAL_PATH)/megapan.maxpat" \

# Write out the full dependency tree if that interests you.
%.dep: js/%.js js/*/*.js  js/*/*/*.js
	$(PREPROCESS) -M -iquote js $< -o $@

