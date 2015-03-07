<head prefix="og: http://ogp.me/ns#">
  <meta charset="utf-8">
  <title>{% if page.title %}{{ page.title }} | {% endif %}{{ config.title }}</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <!-- CSS -->
  <!-- build:css css/2015.css -->
  {{ css('css/2015') }}
  <!-- endbuild -->
  <link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <!-- Google Analytics -->
  {{ partial('google_analytics') }}
  <!-- Open Graph -->
  <link rel="canonical" href="{{ url }}" />
  {{ open_graph({
    fb_app_id: config.fb_app_id
  }) }}
</head>