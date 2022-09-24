@echo off

start "Mysteries of the Sith Devel" /D"%JKM_HOME%" JKM.EXE -devmode -debug log -verbose 2 -windowgui -path %~dps0 %* || pause
