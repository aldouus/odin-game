#!/bin/zsh

# https://github.com/floooh/sokol-tools/blob/master/docs/sokol-shdc.md
./sokol-shdc -i src/shader.glsl -o src/shader.odin -l hlsl5:wgsl:metal_macos -f sokol_odin

if [ ! -d "build" ]; then
    mkdir build
fi

# build the shit
odin build src -debug -out:build/game

# run the shit
./build/game
