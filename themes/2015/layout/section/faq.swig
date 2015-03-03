<section id="faq">
  <h2 class="section-title">FAQ</h2>
  <div class="inner">
    <ul id="faq-list">
      {% for item in site.data.faq %}
        <li class="faq-item-wrap">
          <div class="faq-item">
            <strong class="faq-item-title">{{ item.question }}</strong>
            <p class="faq-item-content">{{ item.answer }}</p>
          </div>
        </li>
      {% endfor %}
    </ul>
  </div>
</section>