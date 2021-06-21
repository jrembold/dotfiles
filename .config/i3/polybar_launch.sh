#!/bin/sh

# Terminate any already running instances
killall -q polybar

# Make sure the process(es) have been shut down
while pgrep -x polybar > /dev/null; do sleep 1; done

# Launch polybar
polybar primary &
polybar secondary &
polybar tertiary &
