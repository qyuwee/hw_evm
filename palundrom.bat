@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

set /p "s=Строка: "
set "s=%s: =%"
set "r="
set "i=0"

:loop
if not "!s:~%i%,1!"=="" (
    set "r=!s:~%i%,1!!r!"
    set /a i+=1
    goto loop
)

if /i "!s!"=="!r!" (echo Палиндром) else (echo Не палиндром)
pause