<section id="section-schedule">
  <h2 class="section-title">Schedule</h2>
  <div class="inner">
    {% for item in site.data.schedule %}
      <div class="schedule-list-wrap">
        <strong class="schedule-list-title">{{ item.date }}</strong>
        <table class="schedule-list">
          {% for event in item.events %}
            <tr>
              <td>{{ event.time }}</td>
              <td>{{ event.content }}</td>
            </tr>
          {% endfor %}
        </table>
      </div>
    {% endfor %}
  </div>
</section>