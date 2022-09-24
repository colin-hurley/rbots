@echo off

start "Jedi Knight Devel" /D"%JK_HOME%" JK.EXE -devmode -debug log -verbose 2 -windowgui -path %~dps0 %* || pause
