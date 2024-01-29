---
layout: default
title: Proceedings COMSOC Worksop 2018
---

# Proceedings of the COMSOC Workshop 2018

<ul>
    {% assign sorted_papers = site.data.proceedings2018 | sort: 'pdf_file' %}
    {% for paper in sorted_papers %}
        <li>{{ paper.title }}<br>
            {% for author in paper.authors %}
                {{ author }}{% unless forloop.last %}{% if forloop.rindex == 2 %} and {% else %}, {% endif %}{% endunless %}
            {% endfor %}<br>
            <a href="assets/proceedings/comsoc-2018/{{ paper.pdf_file }}" target="_blank">[PDF File]</a>
        </li>
    {% endfor %}
</ul>
