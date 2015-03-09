<head prefix="og: http://ogp.me/ns#">
  <meta charset="utf-8">
  <title>{% if page.title %}{{ page.title }} | {% endif %}{{ config.title }}</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <!-- build:css css/index.css -->
  {{ css('css/base') }}
  {{ css('css/header') }}
  {{ css('css/banner') }}
  {{ css('css/intro') }}
  {{ css('css/schedule') }}
  {{ css('css/location') }}
  {{ css('css/sponsors') }}
  {{ css('css/judges') }}
  {{ css('css/faq') }}
  {{ css('css/footer') }}
  {{ css('css/mobile_nav') }}
  <!-- endbuild -->
  <link href="http://fonts.googleapis.com/css?family=Exo+2:200,700" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <!-- Google Analytics -->
  {{ partial('google_analytics') }}
  <!-- Open Graph -->
  <link rel="canonical" href="{{ url }}" />
  {{ open_graph({
    image: config.url + '/cover.png'
  }) }}
</head>