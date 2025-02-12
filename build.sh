#!/bin/zsh

# https://github.com/floooh/sokol-tools/blob/master/docs/sokol-shdc.md
./sokol-shdc -i sauce/shader.glsl -o sauce/shader.odin -l hlsl5:wgsl:metal_macos -f sokol_odin

if [ ! -d "build" ]; then
    mkdir build
fi

# build the shit
odin build sauce -debug -out:build/game.app

# run the shit
./build/game.app
