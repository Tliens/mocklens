#!/bin/bash
D="$(cd "$(dirname "$0")" && pwd)/assets_raw"
fetch() { [ -s "$D/$2" ] && return; gh api "repos/jamesjingyi/mockup-device-frames/contents/Exports/$1" --jq .content | base64 -d > "$D/$2" && echo "ok $2"; }
# iPad Pro M4 (portrait)
fetch "iPadOS/iPad%20Pro/M4%20%26%20M5/11/iPad%20Pro%2011%20M4%20%26%20M5%20-%20Portrait%20-%20Silver.png" "pad11-silver.png"
fetch "iPadOS/iPad%20Pro/M4%20%26%20M5/11/iPad%20Pro%2011%20M4%20%26%20M5%20-%20Portrait%20-%20Space%20Black.png" "pad11-black.png"
fetch "iPadOS/iPad%20Pro/M4%20%26%20M5/13/iPad%20Pro%2013%20M4%20%26%20M5%20-%20Portrait%20-%20Silver.png" "pad13-silver.png"
fetch "iPadOS/iPad%20Pro/M4%20%26%20M5/13/iPad%20Pro%2013%20M4%20%26%20M5%20-%20Portrait%20-%20Space%20Black.png" "pad13-black.png"
# MacBook Pro 14 / 16
fetch "MacBook/MacBook%20Pro/14/MacBook%20Pro%2014%20-%20Space%20Black.png" "mbp14-black.png"
fetch "MacBook/MacBook%20Pro/14/MacBook%20Pro%2014%20-%20Silver.png" "mbp14-silver.png"
fetch "MacBook/MacBook%20Pro/16/MacBook%20Pro%2016%20-%20Space%20Black.png" "mbp16-black.png"
fetch "MacBook/MacBook%20Pro/16/MacBook%20Pro%2016%20-%20Silver.png" "mbp16-silver.png"
