#!/bin/sh

if test -n "$1"
then
  name="$1"
else
  name=ja
fi

dir="$name"`date +%Y%m%d`

mkdir -p "$dir"
cd "$dir"

export EDITOR=vim

exec tmux new -s "$name"
