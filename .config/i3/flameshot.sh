#!/bin/bash
result=$(ps ax|grep -v grep|grep flameshot)
if [ "$result" == "" ]; then
  eval "flameshot gui"
else
  eval "killall flameshot"
fi
