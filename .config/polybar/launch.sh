#!/usr/bin/env bash

# Terminate already running bar instances
pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload swag >>/tmp/polyswag.log 2>&1 &

  done
else
  polybar --reload swag >>/tmp/polyswag.log 2>&1 &
fi

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polyswag.log 
