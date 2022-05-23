@ECHO OFF
:: 1. Set wallpaper path
Set wallpaperPath = %1

:: 2. Get a link of a random wallpaper
Parser.py > Output
SET /p downloadLink=<Output
::ECHO %downloadLink%
::PAUSE
DEL Output

:: 3. Download from link to the path
DEL wallpaper.jpg
wget --no-check-certificate -O wallpaper.jpg %downloadLink%
