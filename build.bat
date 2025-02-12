@echo off

if not exist "build" mkdir build

rem https://github.com/floooh/sokol-tools/blob/master/docs/sokol-shdc.md
sokol-shdc -i sauce/shader.glsl -o sauce/shader.odin -l hlsl5:wgsl -f sokol_odin

rem build the shit
odin build sauce -debug -out:build/game.exe

rem run the shit
build\game.exe
