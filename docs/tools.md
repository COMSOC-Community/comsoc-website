---
layout: default
title: Tools | COMSOC
---

<section markdown="1" class="section-with-navs">

# The COMSOC Ecosystem

COMSOC researchers have developed throughout the years a large set of tools. These tools serve 
different objectives. Some of them are developed to help researchers produce better research.
Some others are designed as outreach tools to advertise the research to a general audience.

We compile below a list of tools.
The tools are classified in categories based on their topic of study and on their type of tool.
Additional information is also provided, in particular:
- <i class="fa-solid fa-laptop-code"></i> indicates that the tool is open source, click on the icon to view the sources;
- <i class="fa-solid fa-list-check"></i> indicates that the tool has been tested (mostly relevant for code libraries);
- <i class="fa-solid fa-book"></i> indicates that the tool has been documented, click on the icon to view the documentation.

For each topic, we have identified "reference tools". These are tools that are particularly
important and need to be considered by anyone who is thinking of developing new tools on the topic.
Before developing a new tool, explore the reference tools on the topic to assess what are the
conventions (data format, etc...). Consider extending the reference tools rather than creating a new
one.

{% assign tools_per_topic = site.data.tools | group_by: "topic" %}

<div class="page-navigation-wrap">
<div class="page-navigation">
{% for topic in site.tools_topics %}
{% assign tools = tools_per_topic | where: "name", topic %}
{% if tools.size > 0 %}
<span><a href="#{{ topic }}">{{ topic }}</a></span>
{% endif %}
{% endfor %}
</div>
</div>

</section>

{% for topic in site.tools_topics %}
{% assign tools = tools_per_topic | where: "name", topic | first %}

{% if tools.items.size > 0 %}

<section id="{{ topic }}">

<h2>{{ topic }}</h2>

{% assign tools_sorted = tools.items | sort: "name" %}
{% assign reference_tools = tools_sorted | where: "reference-tool", true %}
{% assign other_tools = tools_sorted | where: "reference-tool", false %}

{% assign tool_types = "reference,other" | split: ',' %}

{% for tool_type in tool_types %}

{% if tool_type == "reference" %}
{% assign current_tools = reference_tools %}
{% else %}
{% assign current_tools = other_tools %}
{% endif %}

{% if current_tools.size > 0 %}
{% if reference_tools.size > 0 %}
<h3>{{ tool_type | capitalize }} Tools</h3>
{% endif %}

<div class="{{ tool_type }}-tools-wrap tools-wrap">

{% assign current_tools = current_tools | sort: "category" %}
{% for tool in current_tools %}
<div class="{{ tool_type }}-tool-wrap tool-wrap">

<h4 class="{{ tool_type }}-tool-title">
    <span>
        <a href="{{ tool.url }}" target="_blank">
            {% if tool.type == "Website" %}
                <i class="fa-solid fa-globe"></i>
            {% elsif tool.type == "Python" %}
                <i class="fa-brands fa-python"></i>
            {% endif %}
            {{ tool.name }}
        </a>
    </span>
    <span class="badges-wrap">
        {% if tool.source-url %}<span class=""><a href="{{ tool.source-url }}" target="_blank"><i class="fa-solid fa-laptop-code"></i></a></span>{% endif %}
        {% if tool.has-tests %}<span class=""><i class="fa-solid fa-list-check"></i></span>{% endif %}
        {% if tool.documentation-url %}<span class=""><a href="{{ tool.documentation-url }}" target="_blank"><i class="fa-solid fa-book"></i></a></span>{% endif %}
        {% if tool.category %}<span class="badge tool-category">{{ tool.category }}</span>{% endif %}
        {% if tool_type == "other"%}<span class="toggle-arrow">&#9662;</span>{% endif %}
    </span>
</h4>

<div class="{{ tool_type }}-tool-details tool-details">

<p>{{ tool.description }}</p>

<p>
    {% for contrib in tool.contributors %}<span{% if contrib.maintainer %} class="tool-contributor"{% endif%}>{% if contrib.url %}<a href="{{ contrib.url }}">{% endif %}{{ contrib.name }}{% if contrib.url %}</a>{% endif %}</span>{% unless forloop.last %}{% if forloop.rindex == 2 %} and {% else %}, {% endif %}{% endunless %}{% endfor %}
</p>
</div>
</div>
{% endfor %}
</div>
{% endif %}
{% endfor %}

</section>

{% endif %}
{% endfor %}


<script>
document.addEventListener('DOMContentLoaded', function () {
    const titles = document.querySelectorAll('.other-tool-title');
    titles.forEach(function (title) {
        title.addEventListener('click', function () {
            const content = title.nextElementSibling;
            content.classList.toggle('show');
            title.classList.toggle('show');
        });
    });
});
</script>