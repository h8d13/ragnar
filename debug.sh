#!/usr/bin/env bash
# run ragnar under gdb; on crash the backtrace lands in .gdb.log
# next to this script. use `exec ~/ragnar/debug.sh` in .xinitrc.

cd "$(dirname "$0")" || exit 1

make CFLAGS="-O0 -g" || exit 1

exec gdb -q -batch -ex run -ex 'bt full' --args ./bin/ragnar > .gdb.log 2>&1
