@echo off
setlocal
set name=AlphaScry_0.0.3.zip

rem -----------------

mkdir build 2>nul
del build\%name% 2>nul
"%PROGRAMFILES%\7-Zip\7z.exe" a -r build\%name% AlphaScry\*.* 
endlocal