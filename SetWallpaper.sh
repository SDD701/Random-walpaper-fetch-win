@ECHO OFF
# 1. Set wallpaper path
# Set wallpaperPath = %1

# 2. Get a link of a random wallpaper
result = False
until [[ $result -eq True ]]; do
  downloadLink = $(Parser.py)

  # 3. Download from link to the path
  rm wallpaper.jpg
  wget --no-check-certificate -O wallpaper.jpg %downloadLink%
  result = $(ResolutionTest.py)
done

#4. Set new wallpaper
pywal -i ./wallpaper.jpg
