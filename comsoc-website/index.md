---
layout: default
title: Computational Social Choice (COMSOC)
sitemap:
  priority: 1
---

<section markdown="1" id="comsoc">

# What is Computational Social Choice?

The research field of computational social choice (COMSOC) 
is concerned with the design and analysis of methods for collective decision making. 
It is a dynamic interdisciplinary field of study at the interface of computer science and economics, 
fostering an exchange of ideas in both directions.

<!-- On the one hand, it applies techniques from computer science, such as algorithm design and complexity analysis,
to the study of social choice mechanisms, such voting rules or fair division protocols.
On the other hand, it imports concepts from social choice theory as traditionally studied in economics,
such as the normative analysis of mechanisms for decision making by means of the axiomatic method,
into computing, where it then applies those concepts to novel application scenarios, 
such as multiagent systems and network design. -->

</section>

<section>
    <div id="group-photo-container">
      <img id="random-group-photo" src="" alt="Random Photo">
      <p><a id="random-group-photo-title" href=""></a></p>
    </div>
</section>

<section markdown="1" id="interdisciplinarity">

## Interdisciplinarity by Design

COMSOC is, by design, an interdisciplinary field of research.
It draws inspiration from and employs methodologies originating in a diverse range of disciplines, 
including computer science, AI, economics, political science, philosophy, logic, and mathematics.
This interdisciplinary nature allows researchers to tackle complex problems in collective decision making 
from multiple perspectives.

<div markdown="1" class="paragraphs-with-lettrine-wrap">

<span class="interdisciplinary-header lettrine">Algorithmic<br>Insights</span>
Classical results in social choice theory often concern the mathematical possibility (or impossibility) 
of designing mechanisms for collective decision making that meet certain desirable properties.
These usually are normative properties, such as satisfying some notion of fairness or being immune to strategic manipulation. 
But those classical results typically do not take computational considerations into account.
In COMSOC, on the other hand, algorithmic questions take centre stage:
How hard, in the complexity-theoretic sense, is it to solve the problem at hand?
Can we design an algorithm for it?

<span class="interdisciplinary-header lettrine">Information<br>Encoding</span>
Mechanisms for collective decision making, such as voting rules or protocols for the fair allocation 
of resources, may face serious challenges when dealing with large numbers of alternatives.
Those numbers can get large when alternatives have a combinatorial structure, 
meaning that the overall decision to be taken really is made up of several smaller decisions.
COMSOC makes the need for the compact representation of preferences explicit:
How should we represent the preferences of individuals over a complex space of alternatives?
What is the impact of the chosen format of representation on the mechanisms and algorithms we can design?

<span class="interdisciplinary-header lettrine">Strategic<br>Thinking</span>
Social choice theory is a close cousin of game theory, 
the study of mathematical models for the analysis of strategic interactions between rational agents.
Indeed, a voter seeking to act in their own best interest must reason about 
the impact their own vote will have in view of the strategies adopted by everybody else. 
There thus is an intensive exchange of ideas between COMSOC and the field of algorithmic game theory.
Can we avoid voters acting strategically? Does this depend on the information voters have access to? 
Does it depend on their computational abilities?

<span class="interdisciplinary-header lettrine">Formal<br>Reasoning</span>
Logic has long been used to formally specify the behaviour of both hardware and software systems, 
so as to allow for the automatic verification of certain desirable properties of such systems.
Can we use logic in a similar fashion to also verify the adequate behaviour of "social procedures", such as voting rules? 
Relatedly, logic is at the core of attempts to automate the derivation of proofs in several branches of mathematics. 
Can this methodology be applied to open problems in social choice theory as well?

<span class="interdisciplinary-header lettrine">Learning<br>Choices</span>
There are also intriguing open questions at the interface of social choice theory with machine learning. 
Also here, the exchange of ideas can go in both directions. 
Can we learn a good voting rule from data on collective decisions taken in specific situations? 
*Vice versa*, can we use the axiomatic method of social choice theory to improve machine learning algorithms 
that may affect groups of individuals and that are required to adhere to certain ethical standards?

<span class="interdisciplinary-header lettrine">Experimental<br>Findings</span>
The formal models we study in social choice theory are intended to to represent real-life processes.
There thus is a need for collaboration between social choice theorists and behavioural scientists.
What are realistic assumptions regarding the preferences found in a population?
Are the decisions taken by a given mechansism perceived as fair by its users?
Assumptions and hypotheses need to be tested in controlled environments to assess how realistic they are.
Human feedback must be collected on aggregation mechanisms to determine their usability.
Numerical simulations with real-life data also can offer important insights.

</div>

</section>

<section markdown="1" id="topics">

## Selected Topics

COMSOC researchers engage in the study of a broad range of research topics, all involving scenarios where
collective decisions are to be reached on the basis of individual preferences.

<div markdown="1" class="paragraphs-with-lettrine-wrapper">

<span class="topics-header lettrine">Voting and<br>Elections</span>
The archetypal scenario studied in social choice theory is that of voting, 
where a number of individuals each express their preferences regarding a set of alternatives (or candidates). 
Depending on the situation, we need to select either a single winning alternative or a set of winning alternatives. 
Examples for the latter include elections to determine the composition of a parliament or to choose the members of a committee.
Novel models of voting are particularly relevant to exciting innovations in the area of direct democracy,
such as participatory budgeting or liquid democracy.

<span class="topics-header lettrine">Fair<br>Allocation</span>
The second major cornerstone of social choice theory is fair allocation, the study of mechanisms
to determine how to divide a number of jointly owned resources between several individuals, 
who may each have different preferences regarding these resources.
The classical problem in the field concerns the question of how to fairly share a cake between several people.
Other examples include questions such as how to partition a piece of land, 
how to allocate bandwidth to users on a communication network, 
and how to distribute tasks between the members of a team.

<span class="topics-header lettrine">Coalition<br>Formation</span>
How should we partition a group of workers into teams?
How should we go about assigning students to schools, or resident doctors to hospitals?
Which teams would be formed, which students/doctors and schools/hospitals would team up, if we let everyone decide freely?
These questions fall under the broad heading of coalition formation.
The common characteristic of these scenarios is that any valid outcome consists of a partition of the individuals into groups,
and that individuals have preferences over who else is part of their group.

<span class="topics-header lettrine">Opinion<br>Aggregation</span>
Lastly, COMSOC researchers also study how to aggregate, or merge, conflicting opinions about what is and what is not true in this world.
Examples include the jury in a trial jointly deciding on a legal question,
or a panel of experts agreeing on a recommendation regarding a complex policy domain, such as sustainability.
These are challenging decision scenarios to model and analyse, because the range of reasonable outcomes 
may be subject to a rich set of constraints encoding interdependencies between different issues. 

</div>

</section>

<section markdown="1" id="courses">

## Courses

Want to learn more?
Here is a (not at all exhaustive) list of COMSOC courses throughout the world:

<ul class="course-list">
{% for course in site.data.courses %}
<li><p>
<strong>{{ course.title }}</strong> &ndash; <a href="{{ course.lecturer_url }}">{{ course.lecturer }}</a> <span class="institution-link">(<a href="{{ course.institution_url }}">{{ course.institution }}</a>)</span> </p>
<p>
{% for edition in course.editions %}
<span>{% if edition.url %}<a href="{{ edition.url }}">{% endif %}{{ edition.name }}{% if edition.url %}</a>{% endif %}</span> {% unless forloop.last %} &middot; {% endunless %}
{% endfor %}
</p></li>
{% endfor %}
</ul>

</section>

<script>
  window.onload = function() {
    var photos = [
      {% for photo in site.data.groupphotos %}
      { 
        src: '{{ photo.src }}',
        title: '{{ photo.title }}',
        url: '{{ photo.url }}'
      },
      {% endfor %}
    ];

    var randomIndex = Math.floor(Math.random() * photos.length);
    var randomPhoto = photos[randomIndex];

    document.getElementById('random-group-photo').src = "{{ site.baseurl }}/assets/images/group-photos/" + randomPhoto.src;
    document.getElementById('random-group-photo').alt = randomPhoto.title;

    document.getElementById('random-group-photo-title').textContent = randomPhoto.title;
    document.getElementById('random-group-photo-title').href = randomPhoto.url;
  };
</script>
