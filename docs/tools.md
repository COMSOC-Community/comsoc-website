---
layout: default
title: Tools | COMSOC
---

<section markdown="1" class="section-with-navs">

# Tools for COMSOC

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

Tools are also assigned a tag based on where in the typical pipeline of a COMSOC problem they are
useful:
- <span class="badge tool-category">Preferences</span>: Tools that deal with the preferences of the agents  

- <span class="badge tool-category">Aggregation</span>: Tools that focus on the aggregation stage, when the preferences are aggregated into a collective decision

- <span class="badge tool-category">Analysis</span>: Tools that are used for analysis purposes, most often regarding the outcome

- <span class="badge tool-category">Application</span>: Application platforms that offer COMSOC tools to the general audience

- <span class="badge tool-category">Outreach</span>: Tools designed for outreach purposes

{% assign tools_per_topic = site.data.tools | group_by: "topic" %}

<div class="page-navigation-wrap">
<div class="page-navigation">
<span><a href="#best-practices">Best Practices</a></span>
{% for topic in site.tools_topics %}
{% assign tools = tools_per_topic | where: "name", topic %}
{% if tools.size > 0 %}
<span><a href="#{{ topic }}">{{ topic }}</a></span>
{% endif %}
{% endfor %}
</div>
</div>

</section>

<section id="best-practices" markdown="1">

## Best Practices

The development of tools for and by the COMSOC community is guided by the sense of [community]({{ "community" | relative_url }})
together with the principles of [open source development](https://opensource.com/resources/what-open-source){:target="_blank"}.
We aim to create a vibrant and inclusive ecosystem that is inviting and inclusive to everyone.
The success of the tools can only come together with support from the community.

We have assembled below a set of best practices to be considered when developing tools.

- **Assess the need**: a lot of tools have already been developed, it is often better to develop further existing tools than to create new ones. Explore the tools below to get an idea of what exists, what are the standards etc... 
- **Ensure maintainability**: tools are developped for the long term, keep in mind that the initial developer may not be around 10 years down the line. Documentation is key.
- **Easy adoption**: tools are successful only if they are easy to use. Documentation is key once again. Provide examples on how to use them.
- **Reliability**: confidence in the tool is needed for it to be used. Demonstrate that your tool does what it should. Tests are not overrated.
- **Visibility**: ensure that your tools are visible on the platforms use by the community. Add your tools to this list ([how to]({{ site.github_url}}){:target="_blank"}), on the [COMSOC zenodo](https://zenodo.org/communities/comsoc){:target="_blank"} organisation, etc...

Below is a list of programming languages together with the number of tools using them. This can be
used to determine suitable programming languages for future tools.


{% assign all_languages = "" | split: "" %}
{% assign all_languages_unique = "" | split: "" %}
{% for tool in site.data.tools %}
{% if tool.languages %}
{% for lang in tool.languages %}
{% assign all_languages = all_languages | push: lang %}
{% if all_languages_unique contains lang %}
{% else %}
{% assign all_languages_unique = all_languages_unique | push: lang %}
{% endif %}
{% endfor %}
{% endif %}
{% endfor %}

{% assign all_languages_unique = all_languages_unique | sort %}

<div class="programming-languages-wrap">
{% for unique_lang in all_languages_unique %}
{% assign count = 0 %}
{% for lang in all_languages %}
{% if unique_lang == lang %}
{% assign count = count | plus: 1 %}
{% endif %}
{% endfor %}
<div class="programming-languages"><span>{{ unique_lang }}:</span><span>{{ count }}</span></div>
{% endfor %}
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
        {% if tool.source-url %}<span><a href="{{ tool.source-url }}" target="_blank"><i class="fa-solid fa-laptop-code"></i></a></span>{% endif %}
        {% if tool.has-tests %}<span><i class="fa-solid fa-list-check"></i></span>{% endif %}
        {% if tool.documentation-url %}<span><a href="{{ tool.documentation-url }}" target="_blank"><i class="fa-solid fa-book"></i></a></span>{% endif %}
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