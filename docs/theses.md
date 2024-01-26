---
layout: default
title: Theses
---

# PhD Theses

This is an (incomplete) list of PhD theses in the field of computational social choice, listed in inverse chronological order. I welcome suggestions for further additions; just send me an <a href="mailto:ulle.endriss@uva.nl">email</a>.

<ul>
    {% for thesis in site.data.theses %}
        <li>
            {{ thesis.name }} ({{ thesis.affiliation }}, {{ thesis.year }}) <br>
            <a href="{{ thesis.url }}">{{ thesis.title }}</a> <br>
            {% if thesis.supervisors.size == 1 %}
                Supervisor: {{ thesis.supervisors[0] }}
            {% else %}
                Supervisors:
                {% for supervisor in thesis.supervisors %}
                    {{ supervisor }}{% unless forloop.last %}{% if forloop.rindex == 2 %} and {% else %}, {% endif %}{% endunless %}
                {% endfor %}
            {% endif %}
        </li>
    {% endfor %}
</ul>

