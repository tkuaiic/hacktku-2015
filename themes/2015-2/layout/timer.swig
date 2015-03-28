layout: false
---
<!DOCTYPE html>
<html lang="{{ config.language }}">
<head>
  <meta charset="utf-8">
  <title>TKU Hackathon 2015</title>
  <link href="http://fonts.googleapis.com/css?family=Exo+2:200,700" rel="stylesheet" type="text/css">
  {{ css('css/timer') }}
</head>
<body>
  {{ page.content }}
  <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
  {{ js('js/timer') }}
</body>