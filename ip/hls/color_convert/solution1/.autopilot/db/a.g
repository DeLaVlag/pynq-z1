#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/matti/TD/VHDL/PYNQ/boards/ip/hls/color_convert/solution1/.autopilot/db/a.g.bc ${1+"$@"}