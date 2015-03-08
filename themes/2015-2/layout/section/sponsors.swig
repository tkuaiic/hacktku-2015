<section id="sponsors">
  <div class="section-title-wrap">
    <h2 class="section-title">Sponsors</h2>
  </div>
  <div class="inner">
    <ul id="sponsor-list">
      {% for sponsor in site.data.sponsors %}
        <li class="sponsor-item-wrap">
          <a class="sponsor-item" href="{{ sponsor.link }}" title="{{ sponsor.name }}" target="_blank" rel="external">
            <img class="sponsor-logo" src="{{ url_for('sponsors/' + sponsor.logo) }}" alt="{{ sponsor.name }}">
          </a>
        </li>
      {% endfor %}
    </ul>
    <div id="sponsor-contact-link">
      <p id="sponsor-contact-desc">想成為贊助商嗎？</p>
      <a href="mailto:contact@hacktku.org" class="big-btn">聯絡我們</a>
    </div>
  </div>
</section>