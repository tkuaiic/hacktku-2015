{% set per_column = site.data.faq.length / 2 %}

{% macro faq_list(start, end) %}
  {% for item in site.data.faq.slice(start, end) %}
    <div class="faq-item">
      <strong class="faq-title">{{ item.question }}</strong>
      <p class="faq-answer">{{ item.answer }}</p>
    </div>
  {% endfor %}
{% endmacro %}

<section id="faq">
  <div class="section-title-wrap">
    <h2 class="section-title">FAQ</h2>
  </div>
  <div class="inner">
    <div id="faq-inner">
      <div class="faq-column">{{ faq_list(0, per_column) }}</div>
      <div class="faq-column">{{ faq_list(per_column, site.data.faq.length) }}</div>
    </div>
  </div>
</section>