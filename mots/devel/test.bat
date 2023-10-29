@echo off

setlocal

rem If JKM_HOME is not set, try the default install path
if "%JKM_HOME%" == "" (
	set JKM_HOME=C:\Program Files\LucasArts\MotS
)

rem Ensure game executable exists
if not exist "%JKM_HOME%\JKM.EXE" (
	echo Error: %JKM_HOME%\JKM.EXE not found
	goto :EOF
)

start "Mysteries of the Sith Devel" /D"%JKM_HOME%" JKM.EXE -devmode -debug log -verbose 2 -windowgui -path %~dps0 %* || pause
