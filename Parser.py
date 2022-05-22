import requests

URL = "https://wall.alphacoders.com/random.php"
page = requests.get(URL)

print(page.text)
