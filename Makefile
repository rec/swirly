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


PREPROCESS=gcc -E -P -C -x c -I. -I..
# -E means stop after preprocessing.
# -P means don't generate line markers (which confuse Javascript).
# -C means not to discard comments.
# -x c means treat the file as C code.

all: compiled-js-files

compiled-js-files: \
 fader.jso \
 megapan.jso \
 run_tests.jso \
 swirly_time.jso \
 write_lom.jso \

# Build .jso files from .js.  The first entry in the list is the source file -
# the remaining entry is the list of all possible files it depends on.  This
# means that when any JS file is changed, the whole thing is recompiled, which
# is perfectly reasonable as it's fast.

%.jso: js/%.js js/*/*.js js/*/*/*.js js/*/*/*/*.js js/*/*/*/*/*.js
	$(PREPROCESS) -iquote js $< -o $@

# Remove all the local .jso files.
clean:
	rm *.jso

