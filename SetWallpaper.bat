@ECHO OFF
:: 1. Set wallpaper path
Set wallpaperPath = %1

:: 2. Get a link of a random wallpaper
Parser.py > Output
SET /p downloadLink=<Output
ECHO %downloadLink%
PAUSE
DEL Output
:: 5. Download from link to the path
:: 6. Set wallpaper from the path
