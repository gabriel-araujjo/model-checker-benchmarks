#!/bin/sh
#
# Runs a simple test (default: ./barrier/barrier)
# Syntax:
#  ./run.sh [test program] [OPTIONS]
#  ./run.sh [OPTIONS]
#  ./run.sh [gdb [test program]]
#
# If you include a 'gdb' argument, the your program will be launched with gdb.
# You can also supply a test program argument to run something besides the
# default program.
#

BIN=./barrier/barrier
PREFIX=

export LD_LIBRARY_PATH=..

[ $# -gt 0 ] && [ "$1" = "gdb" ] && PREFIX=gdb && shift
[ $# -gt 0 ] && [ -x "$1" ] && [ -f "$1" ] && BIN="$1" && shift

set -x
$PREFIX $BIN $@
