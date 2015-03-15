<section id="partners">
  <div class="section-title-wrap">
    <h2 class="section-title">Partners</h2>
  </div>
  <div class="inner">
    {{ partial('partial/sponsor_list', {title: '主辦單位', sponsor_list: site.data.organizers}) }}
    {{ partial('partial/sponsor_list', {title: '贊助', sponsor_list: site.data.sponsors}) }}
    <div id="partner-contact-link">
      <a href="mailto:contact@hacktku.org" class="big-btn">聯絡我們</a>
    </div>
  </div>
</section>