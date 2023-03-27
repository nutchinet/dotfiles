@echo off

goto:main

:mymklink
setlocal
set to=%~1
set from=%~2
if not exist "%to%" mklink "%to%" "%from%"
endlocal
exit /b 0

:main
set base=%~dp0

call:mymklink "%USERPROFILE%\.gitconfig" "%base%\.gitconfig"
