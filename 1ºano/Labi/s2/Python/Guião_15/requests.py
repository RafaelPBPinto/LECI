import requests

f = requests.get("http://www.ua.pt")

print(f.status_code)
