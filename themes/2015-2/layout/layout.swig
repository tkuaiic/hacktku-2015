<!DOCTYPE html>
<html lang="{{ config.language }}">
{{ partial('partial/head') }}
<body>
  <div id="container">
    {{ partial('partial/header') }}
    {{ body }}
    {{ partial('partial/footer') }}
  </div>
  {{ partial('partial/mobile_nav') }}
  {{ partial('partial/after_footer') }}
</body>