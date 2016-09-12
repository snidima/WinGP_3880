@echo off
rem goto to disk
%~d0
rem goto folder
cd %~dp0
rem set LANG=en
rm2gpraw.exe -i%1 -lv 
%GPRINT% -f%1.filelist -l
