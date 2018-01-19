#!/bin/sh

ASSETS_DIR=../SuperEffective/SuperEffective/Assets.xcassets/AppIcon.appiconset

sips -Z 20 Icon.png --out ${ASSETS_DIR}/Icon-20.png
sips -Z 40 Icon.png --out ${ASSETS_DIR}/Icon-20@2x.png
sips -Z 60 Icon.png --out ${ASSETS_DIR}/Icon-20@3x.png

sips -Z 29 Icon.png --out ${ASSETS_DIR}/Icon-29.png
sips -Z 58 Icon.png --out ${ASSETS_DIR}/Icon-29@2x.png
sips -Z 87 Icon.png --out ${ASSETS_DIR}/Icon-29@3x.png

sips -Z 40 Icon.png --out ${ASSETS_DIR}/Icon-40.png
sips -Z 80 Icon.png --out ${ASSETS_DIR}/Icon-40@2x.png
sips -Z 120 Icon.png --out ${ASSETS_DIR}/Icon-40@3x.png

sips -Z 120 Icon.png --out ${ASSETS_DIR}/Icon-60@2x.png
sips -Z 180 Icon.png --out ${ASSETS_DIR}/Icon-60@3x.png

sips -Z 76 Icon.png --out ${ASSETS_DIR}/Icon-76.png
sips -Z 152 Icon.png --out ${ASSETS_DIR}/Icon-76@2x.png

sips -Z 167 Icon.png --out ${ASSETS_DIR}/Icon-83.5@2x.png

sips -Z 1024 Icon.png --out ${ASSETS_DIR}/Icon-1024.png
