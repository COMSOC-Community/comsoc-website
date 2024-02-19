---
layout: default
title: Video Seminar | COMSOC
description: >
  Discover the COMSOC video seminar, an online seminar organised by Computational Social Choice
  (COMSOC) scientists to discuss their research.
---

<section markdown="1">
# The COMSOC Video Seminar

The [COMSOC Video Seminar](https://comsocseminar.org/){:target="_blank"}, 
launched in April 2020, is an international seminar series on social choice taking place online. 
Researchers from all disciplines are welcome to present and attend.
Upcoming sessions are announced on the [seminar site](https://comsocseminar.org/).

</section>

<section markdown="1" id="past-sessions">

## Past Sessions

Below you will find a listing of past sessions of the COMSOC Video Seminar, with links to recordings.
If you spot a mistake or want to update this list, check the [GitHub repository]({{ site.github_url }})
for the procedure to follow.

{% assign sorted_events = site.data.videoseminar | sort: 'date' | reverse %}
{% for event in sorted_events %}
<div class="video-seminar-event">
<h3 class="video-seminar-event-title">
    <span>
        {{ event.date }}: 
        {% if event.title %}{{ event.title }}{% else %}{% for presentation in event.presentations %}{{ presentation.speaker.name }}{% unless forloop.last %}{% if forloop.rindex == 2 %} and {% else %}, {% endif %}{% endunless %}{% endfor %}{% endif %}
        {% if event.video_links %}{% for link in event.video_links %}<a class="resource-link" href="{{ link }}" target="_blank">[Video{% if event.video_links.size > 1 %} {{ forloop.index }}{% endif %}]</a> {% endfor %}{% endif %}
    </span>
    <span class="toggle-arrow">&#9662;</span>
</h3>

<div class="video-seminar-event-content">

{% if event.chair or event.comment %}
<div class="video-seminar-event-header">
{% if event.chair %}<p class="video-seminar-event-chair">Session chair: {{ event.chair }}</p>{% endif %}
{% if event.comment %}<p>{{ event.comment }}</p>{% endif %}
</div>
{% endif %}

{% for presentation in event.presentations %}

<div class="video-seminar-presentation">

{% if presentation.speaker %}<p>{% if presentation.speaker.url %}<a href="{{ presentation.speaker.url }}" target="_blank">{% endif %}{{ presentation.speaker.name }}{% if presentation.speaker.url %}</a>{% endif %} {% if presentation.speaker.affiliation %}({{ presentation.speaker.affiliation }}){% endif %}</p>{% endif %}

{% if presentation.title %}<p class="video-seminar-presentation-title">{{ presentation.title }}{% if presentation.slides_link %} <a class="resource-link" href="{{ presentation.slides_link }}" taget="_blank">[Slides]</a>{% endif %}</p>{% endif %}

{% if presentation.abstract %}<p>{{ presentation.abstract }}</p>{% endif %}

{% if presentation.joint_work %}<p>Joint work with: {{ presentation.joint_work }}</p>{% endif %}

{% if presentation.links %}
{% if presentation.links.size > 1 %}
<ul>
{% for link in presentation.links %}
<li><a href="{{ link }}">{{ link }}</a></li>
{% endfor %}
</ul>
{% else %}
<p><a href="{{ presentation.links[0] }}">{{ presentation.links[0] }}</a></p>
{% endif %}
{% endif %}

</div>
{% endfor %}
</div>
</div>
{% endfor %}

</section>

<script>
document.addEventListener('DOMContentLoaded', function () {
    const titles = document.querySelectorAll('.video-seminar-event-title');
    titles.forEach(function (title) {
        title.addEventListener('click', function () {
            const content = title.nextElementSibling;
            content.classList.toggle('show');
            title.classList.toggle('show');
        });
    });
});
</script>
