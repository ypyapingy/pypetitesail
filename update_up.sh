#!/usr/bin/env bash
set -e
LIB="wool-spiral.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/ypyapingy/pypetitesail/releases/download/bright-canyon-crimson-garden/wool-spiral.a"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
