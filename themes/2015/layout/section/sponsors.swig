<section id="sponsors">
  <h2 class="section-title">Sponsors</h2>
  <div class="inner">
    <div id="sponsor-list">
      {% for item in site.data.sponsors %}
        <a class="sponsor-item" href="{{ item.link }}" title="{{ item.name }}" target="_blank" rel="external">
          <img class="sponsor-logo" src="{{ url_for('sponsors/' + item.logo) }}" alt="{{ item.name }}">
        </a>
      {% endfor %}
    </div>
    <div id="sponsor-contact-link">
      <a href="mailto:contact@hacktku.org" class="big-btn">聯絡我們</a>
    </div>
  </div>
</section>