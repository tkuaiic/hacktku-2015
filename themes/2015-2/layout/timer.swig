layout: false
---
<!DOCTYPE html>
<html lang="{{ config.language }}">
<head>
  <meta charset="utf-8">
  <title>TKU Hackathon 2015</title>
  {{ css('css/header') }}
  {{ css('css/banner') }}
  {{ css('css/timer') }}
</head>
<body>
  {{ page.content }}
  {{ js('js/timer') }}
</body>