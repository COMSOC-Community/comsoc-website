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
### {{ event.date }}: {% if event.title %}{{ event.title }}{% else %}{% for presentation in event.presentations %}{{ presentation.speaker.name }}{% unless forloop.last %}{% if forloop.rindex == 2 %} and {% else %}, {% endif %}{% endunless %}{% endfor %}{% endif %}

{% if event.chair %}Session chair: {{ event.chair }}{% endif %}

{% if event.comment %}{{ event.comment }}{% endif %}

{% for presentation in event.presentations %}
{% if presentation.speaker.url %}<a href="{{ presentation.speaker.url }}">{% endif %}{{ presentation.speaker.name }}{% if presentation.speaker.url %}</a>{% endif %} {% if presentation.speaker.affiliation %}({{ presentation.speaker.affiliation }}){% endif %}

{{ presentation.abstract }}

{% if presentation.joint_work %}Joint work with: {{ presentation.joint_work }}{% endif %}

{% if presentation.links %}
{% for link in presentation.links %}
<a href="{{ link }}">{{ link }}</a>
{% endfor %}
{% endif %}
{% endfor %}
{% endfor %}
