<header id="header">
  <a href="{{ config.signup_link }}" id="header-signup-btn">馬上報名</a>
  <nav id="header-nav">
    <ul>
      {% for item in site.data.menu %}
        <li class="header-nav-item">
          <a href="#{{ item }}" class="header-nav-link">{{ loop.key }}</a>
        </li>
      {% endfor %}
    </ul>
  </nav>
</header>