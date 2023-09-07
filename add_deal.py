import requests
import json

url = 'https://chollitos.net/api/deal/add'
loginurl = 'https://chollitos.net/api/user/login'

userInfo = {
    "email": "v@v.com",
    "password": "vip"
}

token = requests.post(loginurl, json=userInfo)
token = token.json()
token = token["access_token"]
print(token)

headers = {
  'authorization': 'Bearer ' + token
}

data = {
  "type": "deal",
  "deal_url": "https://www.amazon.es/deal/13545001",
  "image_urls": "[\"https://www.french-bandit.com/cdn/shop/files/packshot-tapis-voyage-2tailles_400x.jpg?v=1686920718\"]",
  "price_new": 20,
  "price_old": 50,
  "title": "lkea gift card of 50$ for only 43.11 in Eneba",
  "description": "Ikea gift card of €50 for only €43.11 in Eneba\nIdeal to arry all your favorite products with the best discounts Be sure to apply this promotional code before completing your purchase.",
  "category_id": 1,
  "store_id": 10,
  "start_date": "2023-09-06",
  "expires": "2024-01-10",
}

response = requests.post(url, json=data, headers=headers)

print(response.json())
