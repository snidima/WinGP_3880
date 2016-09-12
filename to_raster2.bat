@echo off
rem goto to disk
%~d0
rem goto folder
cd %~dp0
rem set LANG=en
@for /f %%a in ('mkfn.exe') do set "fn=%%a"
"C:\Program Files\gs\gs8.71\bin\gswin32c.exe" -q -dBATCH -dNOPAUSE -sDEVICE=tiff24nc -r300 -sOutputFile="%GPRINT_TEMP%%fn%"  -f -
rm2gpraw.exe -i%GPRINT_TEMP%%fn% -lv 
%GPRINT% -f%GPRINT_TEMP%%fn%.filelist -l
