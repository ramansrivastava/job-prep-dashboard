#!/usr/bin/env bash
cd "$(dirname "$0")"
setsid xdg-open "CS Prep OS.dc.html" >/dev/null 2>&1 &
exit 0
