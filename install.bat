@echo off

goto:main

:mymklink
setlocal
set to=%~1
set from=%~2
if not exist "%to%\.." mkdir "%to%\.."
if not exist "%to%" mklink "%to%" "%from%"
endlocal
exit /b 0

:main
set base=%~dp0

call:mymklink "%USERPROFILE%\.gitconfig" "%base%\dotfiles\.gitconfig"
call:mymklink "%APPDATA%\alacritty\alacritty.yml" "%base%\dotfiles\alacritty-win.yml"
