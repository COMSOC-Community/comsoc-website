---
layout: default
title: PhD Theses | COMSOC
---

<section markdown="1" class="section-with-navs">

# PhD Theses

This is an (incomplete) list of PhD theses in the field of computational social choice, listed in inverse chronological order.
Suggestions for further additions are more than welcome, ping us on <a href="https://github.com/Simon-Rey/comsoc-website">GitHub</a>.

{% assign theses_by_year = site.data.theses | group_by: "year" %}
<div class="page-navigation-wrap">
<div class="page-navigation">
{% for year in theses_by_year %}
<span><a href="#{{ year.name }}">{{ year.name }}</a></span>
{% endfor %}
</div>
</div>
</section>

{% for year in theses_by_year %}
<section id="{{ year.name }}">
<h2>{{ year.name }}</h2>
<ul>
    {% for thesis in year.items %}
        <li><p>
            <strong>{{ thesis.name }}</strong> ({{ thesis.affiliation }}, {{ thesis.year }}) <br>
            <a href="{{ thesis.url }}" target="_blank">{{ thesis.title }}</a> <br>
            {% if thesis.supervisors.size == 1 %}
                Supervisor: {{ thesis.supervisors[0] }}
            {% else %}
                Supervisors:
                {% for supervisor in thesis.supervisors %}
                    {{ supervisor }}{% unless forloop.last %}{% if forloop.rindex == 2 %} and {% else %}, {% endif %}{% endunless %}
                {% endfor %}
            {% endif %}
        </p></li>
    {% endfor %}
</ul>
</section>
{% endfor %}
