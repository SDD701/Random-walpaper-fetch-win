@ECHO OFF
:: 1. Set wallpaper path
Set wallpaperPath = %1

:: 2. Get a link of a random wallpaper
:loop
Parser.py > Output
SET /p downloadLink=<Output
::ECHO %downloadLink%
::PAUSE
DEL Output

:: 3. Download from link to the path
DEL wallpaper.jpg
wget --no-check-certificate -O wallpaper.jpg %downloadLink%
ResolutionTest.py > Output
SET /p result=<Output
::ECHO %result%
::PAUSE
DEL Output
if %result%==False GOTO loop

::4. Set new wallpaper
COPY wallpaper.jpg %AppData%\Microsoft\Windows\Themes
DEL %AppData%\Microsoft\Windows\Themes\TranscodedWallpaper
REN %AppData%\Microsoft\Windows\Themes\wallpaper.jpg TranscodedWallpaper

COPY wallpaper.jpg %AppData%\Microsoft\Windows\Themes\CachedFiles
DEL %AppData%\Microsoft\Windows\Themes\CachedFiles\CachedImage_1920_1080_POS2.jpg0
REN %AppData%\Microsoft\Windows\Themes\CachedFiles\wallpaper.jpg CachedImage_1920_1080_POS2.jpg

POWERSHELL -file RefreshWallpaper.ps1 -path "D:\Projects\Random walpaper fetch win\wallpaper.jpg"
