---
layout: default
title: Video Seminar | COMSOC
---

# COMSOC Video Seminar

The [COMSOC Video Seminar](https://comsocseminar.org/), launched in April 2020, is an international
seminar series on social choice taking place online. Researchers from all disciplines are welcome
to present and attend.

## Past Presentations

{% assign sorted_events = site.data.videoseminar | sort: '-date' %}
{% for event in sorted_events %}
<div class="video-seminar-event">
<h3 class="video-seminar-event-title">
{{ event.date }}: {% if event.title %}{{ event.title }}{% else %}{% for presentation in event.presentations %}{{ presentation.speaker.name }}{% unless forloop.last %}{% if forloop.rindex == 2 %} and {% else %}, {% endif %}{% endunless %}{% endfor %}{% endif %}
{% if event.video_links %}{% for link in event.video_links %}<a class="video-link" href="{{ link }}">[Video{% if event.video_links.size > 1 %} {{ forloop.index }}{% endif %}]</a> {% endfor %}{% endif %}
</h3>

<div class="video-seminar-event-content">

{% if event.chair %}<p>Session chair: {{ event.chair }}</p>{% endif %}

{% if event.comment %}<p>{{ event.comment }}</p>{% endif %}

{% for presentation in event.presentations %}

<div class="video-seminar-presentation">

{% if presentation.speaker %}<p>{% if presentation.speaker.url %}<a href="{{ presentation.speaker.url }}">{% endif %}{{ presentation.speaker.name }}{% if presentation.speaker.url %}</a>{% endif %} {% if presentation.speaker.affiliation %}({{ presentation.speaker.affiliation }}){% endif %}</p>{% endif %}

{% if presentation.title %}<p>{{ presentation.title }}</p>{% endif %}

{% if presentation.abstract %}<p>{{ presentation.abstract }}</p>{% endif %}

{% if presentation.joint_work %}<p>Joint work with: {{ presentation.joint_work }}</p>{% endif %}

{% if presentation.links %}
<ul>
{% for link in presentation.links %}
<li><a href="{{ link }}">{{ link }}</a></li>
{% endfor %}
</ul>
{% endif %}
</div>
</div>
{% endfor %}
</div>
{% endfor %}
