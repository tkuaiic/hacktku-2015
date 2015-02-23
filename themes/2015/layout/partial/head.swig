<head>
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
    image: url_for('logo.png')
  }) }}
  <!-- Icons -->
  <link rel="apple-touch-icon" sizes="57x57" href="{{ url_for('icons/apple-icon-57x57.png') }}">
  <link rel="apple-touch-icon" sizes="60x60" href="{{ url_for('icons/apple-icon-60x60.png') }}">
  <link rel="apple-touch-icon" sizes="72x72" href="{{ url_for('icons/apple-icon-72x72.png') }}">
  <link rel="apple-touch-icon" sizes="76x76" href="{{ url_for('icons/apple-icon-76x76.png') }}">
  <link rel="apple-touch-icon" sizes="114x114" href="{{ url_for('icons/apple-icon-114x114.png') }}">
  <link rel="apple-touch-icon" sizes="120x120" href="{{ url_for('icons/apple-icon-120x120.png') }}">
  <link rel="apple-touch-icon" sizes="144x144" href="{{ url_for('icons/apple-icon-144x144.png') }}">
  <link rel="apple-touch-icon" sizes="152x152" href="{{ url_for('icons/apple-icon-152x152.png') }}">
  <link rel="apple-touch-icon" sizes="180x180" href="{{ url_for('icons/apple-icon-180x180.png') }}">
  <link rel="icon" type="image/png" sizes="192x192"  href="{{ url_for('icons/android-icon-192x192.png') }}">
  <link rel="icon" type="image/png" sizes="32x32" href="{{ url_for('icons/favicon-32x32.png') }}">
  <link rel="icon" type="image/png" sizes="96x96" href="{{ url_for('icons/favicon-96x96.png') }}">
  <link rel="icon" type="image/png" sizes="16x16" href="{{ url_for('icons/favicon-16x16.png') }}">
  <link rel="manifest" href="{{ url_for('manifest.json') }}">
  <meta name="msapplication-TileColor" content="#353535">
  <meta name="msapplication-TileImage" content="{{ url_for('ms-icon-144x144.png') }}">
  <meta name="theme-color" content="#353535">
</head>