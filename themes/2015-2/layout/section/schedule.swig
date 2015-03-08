<section id="schedule">
  <div class="section-title-wrap">
    <h2 class="section-title">Schedule</h2>
  </div>
  <div class="inner">
    <div id="schedule-inner">
      {% for item in site.data.schedule %}
        <div class="schedule-list-wrap">
          <header class="schedule-list-header">
            <strong class="schedule-list-date">{{ item.date }}</strong>
            <span class="schedule-list-day">{{ item.day }}</span>
          </header>
          <table class="schedule-list">
            {% for event in item.events %}
              <tr>
                <td class="schedule-time">{{ event.time }}</td>
                <td>{{ event.content }}</td>
              </tr>
            {% endfor %}
          </table>
        </div>
      {% endfor %}
    </div>
  </div>
</section>