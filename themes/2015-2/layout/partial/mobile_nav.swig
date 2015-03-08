<div id="mobile-nav-dimmer"></div>
<a id="mobile-nav-toggle-wrap">
  <div id="mobile-nav-toggle">
    <div class="mobile-nav-toggle-bar"></div>
    <div class="mobile-nav-toggle-bar"></div>
    <div class="mobile-nav-toggle-bar"></div>
  </div>
</a>
<nav id="mobile-nav">
  <ul id="mobile-nav-list">
    {% for item in site.data.menu %}
      <li class="mobile-nav-item">
        <a href="#{{ item }}" class="mobile-nav-link">{{ loop.key }}</a>
      </li>
    {% endfor %}
  </ul>
</nav>