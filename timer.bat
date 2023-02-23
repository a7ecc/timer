@echo off
set s=0
set m=0
set h=0
set ss=:0
set mm=:0
set hh=[0
:Count
cls
set /a s=s+1
if %s%==60 set /a m=m+1
if %s%==60 set s=0
if %m%==60 set /a h=h+1
if %m%==60 set m=0
if %s% GTR 9 (set ss=:) else (set ss=:0)
if %m% GTR 9 (set mm=:) else (set mm=:0)
if %h% GTR 9 (set hh=[) else (set hh=[0)
echo %hh%%h%%mm%%m%%ss%%s%]
ping localhost -n 2 > nul
goto Count