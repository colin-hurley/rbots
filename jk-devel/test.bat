@echo off

setlocal

rem If JK_HOME is not set, try the default install path
if "%JK_HOME%" == "" (
	set JK_HOME=C:\Program Files\LucasArts\Jedi Knight
)

rem Ensure game executable exists
if not exist "%JK_HOME%\JK.EXE" (
	echo Error: %JK_HOME%\JK.EXE not found
	goto :EOF
)

start "Jedi Knight Devel" /D"%JK_HOME%" JK.EXE -devmode -debug log -verbose 2 -windowgui -path %~dps0 %* || pause
