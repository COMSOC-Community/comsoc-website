---
layout: default
title: Proceedings 2016
---

# Proceedings of the COMSOC Workshop 2016

<ul>
    {% assign sorted_papers = site.data.proceedings2016 | sort: 'pdf_file' %}
    {% for paper in sorted_papers %}
        <li>{{ paper.title }}<br>
            {% for author in paper.authors %}
                {{ author }}{% unless forloop.last %}{% if forloop.rindex == 2 %} and {% else %}, {% endif %}{% endunless %}
            {% endfor %}<br>
            <a href="assets/proceedings/comsoc-2016/{{ paper.pdf_file }}" target="_blank">[PDF File]</a>
        </li>
    {% endfor %}
</ul>
