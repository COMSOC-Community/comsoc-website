---
layout: default
title: Computational Social Choice
---

<section markdown="1">

# What is Computational Social Choice?
{: #comsoc}

Computational social choice (COMSOC) is concerned with the design and analysis of methods for collective decision making. 
It is a dynamic interdisciplinary field of study at the interface of computer science and economics, 
fostering an exchange of ideas in both directions.

On one hand, it applies techniques from computer science, such as algorithm design and complexity analysis,
to the study of social choice mechanisms, such voting rules or fair division protocols.
On the other hand, it imports concepts from social choice theory as traditionally studed in economics,
such as the normative ananlysis of mechansims for decison making by means of the axiomatic method,
into computing, where it applies those concepts to novel application scenarios, 
such as multiagent systems and network design.

</section>

<section>
    <div id="group-photo-container">
      <img id="random-group-photo" src="" alt="Random Photo">
      <p><a id="random-group-photo-title" href=""></a></p>
    </div>
</section>

<section markdown="1">

## Interdisciplinarity by Design
{: #interdisciplinarity}

Computational social choice is, by design, an interdisciplinary research field.
It draws inspiration and employs methodologies from a diverse range of disciplines, 
including computer science, AI, economics, political science, philosophy, logic, and mathematics.
This interdisciplinary nature allows researchers to tackle complex problems in collective decision making 
from multiple perspectives.

<div markdown="1" class="paragraphs-with-lettrine-wrapper">

<span class="interdisciplinary-header lettrine">Algorithmic<br>Insights</span>
Social choice theory focuses on designing and analysing methods for collective decision making,
including voting protocols and procedures for fair resource division among agents. Classical work
in this field establishes abstract results on the existence of procedures meeting certain
requirements, often without considering computational aspects. Complexity analysis and algorithm
design are now integral to studying aggregation procedures. Standard problems that have been studied
include algorithmic issues linked to determining the outcome of an aggregation scenario, to selecting
an outcome that satisfies a given property, or to manipulating voting protocols.

<span class="interdisciplinary-header lettrine">Information<br>Encoding</span>
Methods from social choice theory may face challenges when dealing with large numbers of alternatives,
especially alternatives with a combinatorial structure. Computational social choice addresses problems like
negotiation over indivisible goods or committee elections, applying artificial intelligence and logic
techniques for the compact representation of preferences.

<span class="interdisciplinary-header lettrine">Thinking<br>Logically</span>
Logic is applied to formally specify, verify, and analyze social procedures, known as "social software".
Similar to how logic is used in computer science to specify system behaviour, it can be used to define
social procedures like voting protocols or fair division algorithms.

<span class="interdisciplinary-header lettrine">Strategic<br>Interplay</span>
Voters reason about the voting process as a whole and the impact they can have on its outcome.
Social choice theory thus builds on game-theoretic concepts to analyse strategic interaction in
collective decision-making
There is thus an important exchange of ideas between computational social choice and algorithmic 
game theory (which is to game theory what COMSOC is to social choice).

<span class="interdisciplinary-header lettrine">Experimental<br>Assessment</span>
Social choice problems mostly model real-life processes.
There is thus an important interplay between (computational) social scientist and behavioural scientists.
Assumptions and hypotheses can thus be tested in controlled environments to assess how realistic they are.
Feedback can be collected on voting rules and other aggregation mechanisms to determine their usability.
Numerical simulation and experiments with real-life data are also often run to offer experimental insights
on the object of study: frequency of occurrence of specific phenomenon, satisfaction degree of a given
property...

</div>

</section>

<section markdown="1">

## Selected Topics
{: #topics}

Researchers in computational social choice engage in a broad range of research topics, all based on scenarios in which
collective decisions are to be reached based on individual preferences.

<div markdown="1" class="paragraphs-with-lettrine-wrapper">

<span class="topics-header lettrine">Voting</span>
The most classical research topic is (single-winner) voting, where a single candidate
has to be elected based on the preferences of the voters.
In recent years the focus has been extended
to multiwinner-voting scenarios where more than one candidate is to be selected. Typical examples
include the decision of the composition of a parliament, the election of the board members of a committee,
or the decision on which projects to fund in participatory budgeting processes.
Other intricate voting scenarios have been studied such as iterative voting where voters can update
their preferences over time, voting on social network where a network of exchange of information
between the voters is added to the setting, liquid democracy where voters can transmit their voting
power to other voters before the vote occurs...

<span class="topics-header lettrine">Fair Allocation</span>
The second main cornerstone of social choice theory is fair division, the study
of how to allocate resources among agents who have different tastes over the resources.
Typical examples include how to share a cake among agents who like different parts of the cakes,
how to partition a piece of land, how to assign tasks within a team...

<span class="topics-header lettrine">Coalition Formation</span>
How to assign students to schools, doctors to hospitals?
Which teams would be formed if we let the students freely decide?
These questions fall into the broad research topic of coalition formation.
The key point of these scenarios is an outcome consists in disjoints groups of agents (with potential
additional constraints) and that agents have preferences over who else is part of their group.

<span class="topics-header lettrine">Opinion<br>Aggregation</span>
Lastly, computational social choice scientists also look into how to aggregate,
or merge, conflicting opinions about the truth value of given propositions when only certain
combination of propositions are acceptable.
This can be seen as aggregation problems over logical formulas, given the constraint that the
collective outcome needs to be logically consistent.
Opinions here can take the form of a judgment (when investigating judgment aggregation) or beliefs
(in the case of belief merging).

</div>

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
