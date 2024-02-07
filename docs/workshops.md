---
layout: default
title: Workshop Series | COMSOC
---

<section markdown="1">
# The COMSOC Workshop Series

The COMSOC workshop series aims to bring together diverse communities, including computer scientists interested in computational aspects of social choice, researchers in artificial intelligence and multiagent systems using social choice ideas for organizing artificial software agent societies, logicians interested in logic-based specification and analysis of social procedures, and experts in social choice theory.

These workshops occur biannually, with the exception of 2020 due to the COVID-19 pandemic. The coordination is managed by a [Steering Committee](community).

{% assign sorted_workshops = site.data.workshops | sort: '-date' %}
{% for workshop in sorted_workshops %}
<div class="workshop-wrapper">
<div class="workshop-image" style="background-image: url('{{ site.baseurl }}/assets/images/workshops/{{ workshop.image }}');">

<div class="image-overlay"></div>

<div class="workshop-details">
<h2><a href="{{ workshop.website_url }}">COMSOC-{{ workshop.year }}</a></h2>
<p>{{ workshop.edition }}</p>
<p>{{ workshop.location }}, {{ workshop.dates }} {{ workshop.year }}</p>
<p><a href="{{ site.baseurl }}/proceedings/{{ workshop.year }}">[Proceedings]</a></p>
</div>

</div>
</div>
{% endfor %}

</section>
