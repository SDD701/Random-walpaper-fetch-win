from PIL import Image
im = Image.open("wallpaper.jpg")

if im.size[0]>=1920 and im.size[1]>=1080 and im.size[0]%16==0 and im.size[1]%9==0:
    result = True
else:
    result = False

print(result, end="")
