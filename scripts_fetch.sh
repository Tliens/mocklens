#!/bin/bash
# 从 jamesjingyi/mockup-device-frames（Apple 官方帧导出）下载精选帧
D="$(cd "$(dirname "$0")" && pwd)/assets_raw"
mkdir -p "$D"
fetch() { # $1=repo path  $2=outfile
  [ -s "$D/$2" ] && { echo "skip $2"; return; }
  gh api "repos/jamesjingyi/mockup-device-frames/contents/Exports/$1" --jq .content | base64 -d > "$D/$2" && echo "ok $2 $(stat -f%z "$D/$2")"
}
# iPhone 17 Pro Max / 17 Pro
fetch "iOS/17%20Pro%20Max/17%20Pro%20Max%20-%20Cosmic%20Orange.png" "ip17pm-orange.png"
fetch "iOS/17%20Pro%20Max/17%20Pro%20Max%20-%20Deep%20Blue.png" "ip17pm-blue.png"
fetch "iOS/17%20Pro%20Max/17%20Pro%20Max%20-%20Silver.png" "ip17pm-silver.png"
fetch "iOS/17%20Pro/17%20Pro%20-%20Cosmic%20Orange.png" "ip17-orange.png"
fetch "iOS/17%20Pro/17%20Pro%20-%20Deep%20Blue.png" "ip17-blue.png"
fetch "iOS/17%20Pro/17%20Pro%20-%20Silver.png" "ip17-silver.png"
# iPhone Air
fetch "iOS/Air/Air%20-%20Space%20Black.png" "ipair-black.png"
fetch "iOS/Air/Air%20-%20Cloud%20White.png" "ipair-white.png"
fetch "iOS/Air/Air%20-%20Light%20Gold.png" "ipair-gold.png"
fetch "iOS/Air/Air%20-%20Sky%20Blue.png" "ipair-sky.png"
# iPhone 16 Pro（16 Pro）
fetch "iOS/16%20Pro/16%20Pro%20-%20Black%20Titanium.png" "ip16pro-black.png"
fetch "iOS/16%20Pro/16%20Pro%20-%20White%20Titanium.png" "ip16pro-white.png"
fetch "iOS/16%20Pro/16%20Pro%20-%20Natural%20Titanium.png" "ip16pro-natural.png"
fetch "iOS/16%20Pro/16%20Pro%20-%20Desert%20Titanium.png" "ip16pro-desert.png"
# iPhone 16 Pro Max
fetch "iOS/16%20Pro%20Max/16%20Pro%20Max%20-%20Black%20Titanium.png" "ip16pm-black.png"
fetch "iOS/16%20Pro%20Max/16%20Pro%20Max%20-%20White%20Titanium.png" "ip16pm-white.png"
fetch "iOS/16%20Pro%20Max/16%20Pro%20Max%20-%20Natural%20Titanium.png" "ip16pm-natural.png"
fetch "iOS/16%20Pro%20Max/16%20Pro%20Max%20-%20Desert%20Titanium.png" "ip16pm-desert.png"
# iPhone 16（服务 16/15/15Pro/14Pro 组）
fetch "iOS/16/16%20-%20Black.png" "ip16-black.png"
fetch "iOS/16/16%20-%20White.png" "ip16-white.png"
fetch "iOS/16/16%20-%20Pink.png" "ip16-pink.png"
fetch "iOS/16/16%20-%20Teal.png" "ip16-teal.png"
fetch "iOS/16/16%20-%20Ultramarine.png" "ip16-ultra.png"
# iPhone 16 Plus
fetch "iOS/16%20Plus/16%20Plus%20-%20Black.png" "ip16p-black.png"
fetch "iOS/16%20Plus/16%20Plus%20-%20White.png" "ip16p-white.png"
fetch "iOS/16%20Plus/16%20Plus%20-%20Pink.png" "ip16p-pink.png"
fetch "iOS/16%20Plus/16%20Plus%20-%20Teal.png" "ip16p-teal.png"
fetch "iOS/16%20Plus/16%20Plus%20-%20Ultramarine.png" "ip16p-ultra.png"
# iPhone 13 mini
fetch "iOS/13%20mini/13%20mini%20-%20Midnight.png" "ipmini-midnight.png" || true
fetch "iOS/13%20mini/13%20mini%20-%20Black.png" "ipmini-black.png"
fetch "iOS/13%20mini/13%20mini%20-%20Starlight.png" "ipmini-starlight.png"
fetch "iOS/13%20mini/13%20mini%20-%20Blue.png" "ipmini-blue.png"
fetch "iOS/13%20mini/13%20mini%20-%20Pink.png" "ipmini-pink.png"
fetch "iOS/13%20mini/13%20mini%20-%20Product%20(RED).png" "ipmini-red.png"
