<section id="judges">
  <div class="section-title-wrap">
    <h2 class="section-title">Judges</h2>
  </div>
  <div class="inner">
    <ul id="judge-list">
      {% for judge in site.data.judges %}
        <li class="judge-item-wrap">
          <div class="judge-item">
            <img src="{{ url_for('judges/' + judge.photo) }}" alt="{{ judge.name }}" class="judge-photo">
            <strong class="judge-name">{{ judge.name }}</strong>
            <span class="judge-title">{{ judge.title }}</span>
          </div>
        </li>
      {% endfor %}
    </ul>
  </div>
</section>