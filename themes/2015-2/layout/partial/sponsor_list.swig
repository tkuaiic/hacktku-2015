<h3 class="partner-section-title">{{ title }}</h3>
<ul class="partner-list">
{% for sponsor in sponsor_list %}
  <li class="partner-item-wrap">
    <a class="partner-item" href="{{ sponsor.link }}" title="{{ sponsor.name }}" target="_blank" rel="external">
      <img class="partner-logo" src="{{ url_for('partners/' + sponsor.logo) }}" alt="{{ sponsor.name }}">
    </a>
  </li>
{% endfor %}
</ul>