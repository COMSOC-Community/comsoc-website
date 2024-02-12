---
layout: default
title: Computational Social Choice
---

<section markdown="1">

# What is Computational Social Choice?
{: #comsoc}

The research field of computational social choice (COMSOC) 
is concerned with the design and analysis of methods for collective decision making. 
It is a dynamic interdisciplinary field of study at the interface of computer science and economics, 
fostering an exchange of ideas in both directions.

<!-- On the one hand, it applies techniques from computer science, such as algorithm design and complexity analysis,
to the study of social choice mechanisms, such voting rules or fair division protocols.
On the other hand, it imports concepts from social choice theory as traditionally studed in economics,
such as the normative ananlysis of mechansims for decison making by means of the axiomatic method,
into computing, where it then applies those concepts to novel application scenarios, 
such as multiagent systems and network design. -->

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

Computational social choice is, by design, an interdisciplinary field of research.
It draws inspiration from and employs methodologies originating in a diverse range of disciplines, 
including computer science, AI, economics, political science, philosophy, logic, and mathematics.
This interdisciplinary nature allows researchers to tackle complex problems in collective decision making 
from multiple perspectives.

<div markdown="1" class="paragraphs-with-lettrine-wrapper">

<span class="interdisciplinary-header lettrine">Algorithmic<br>Insights</span>
Classical results in social choice theory often concern the mathematical possibility (or impossibility) 
of designing mechansims for collective decision making that meet certain desirable properties.
These usually are normative properties, such as satisfying some notion of fairness 
or being immume to strategic manipulation. 
But those classical results typically do not take computational considerations into account.
In computational social choice, on the other hand, algorithmic questions take centre stage:
How hard, in the complexity-theoretic sense, is it to solve the problem at hand?
Can we design an algorithm for it?

<span class="interdisciplinary-header lettrine">Information<br>Encoding</span>
Mechansms for collective decison making, such as voting rules or protocols for the fair allocation 
of resources, may face serious challenges when dealing with large numbers of alternatives.
Those number can get large when alternatives have a combinatorial structure, 
meaning that the overall decision to be taken really is made up of several smaller decisions.
Computational social choice makes the need for the compact representation of preferences explicit:
How should we represent the preferences of individuals over a complex space of alternatives?
What is the impact of the chosen format of representation on the mechansims and algorithms we can design?

<span class="interdisciplinary-header lettrine">Strategic<br>Interplay</span>
Social choice theory is a close cousin of game theory, 
the study of mathematical models for the analysis of strategic interactions between rational agents.
Indeed, a voter seeking to act in their own best interest will need to reason about 
the impact their own vote will have in view of the strategies adoped by everybody else. 
There thus is an intensive exchange of ideas between the fields of computational social choice and 
algorithmic game theory.
Can we avoid voters acting strategically? Does this depend on the ifnormation voyers have access to? 
Does it depend on their computational abilities?

<span class="interdisciplinary-header lettrine">Thinking<br>Logically</span>
Logic has long been used to formally specify the behaviour of computer systems, 
so as to allow for the automatic verification of certain desirable properties of such systems.
Can we use logic in a similart fashion to also verify the adequate behaviour of
"social procedures" such as voting rules? 
Relatedly, logic is at the core of attempts to automate the derivation of proofs in several branches of mathematics. 
Can this methodology be applied to open problems in social choice theory as well?

<span class="interdisciplinary-header lettrine">Learning and<br>Social Choice</span>
There are also a intriguing open questions at the interface of social choice theory with machine learning. 
Also here, the exchange of ideas can go in both directions. 
Can we learn a good voting rule from data on collective decisions taken in specific situations? 
Vice versa, can we use the axiomatic method of social choice theory to improve machine learning algorithms 
that are required to adhere to certain ethical standards?

<span class="interdisciplinary-header lettrine">Experimental<br>Assessment</span>
The formal models we study in social choice theory are intended to to represent real-life processes.
There is thus an important interplay between the social choice theorists and behavioural scientists.
What are realistic assumptions regarding the preferences found in a population?
Are the decisons taken by a given mechansim perceived as fair by its users?
Assumptions and hypotheses need to be tested in controlled environments to assess how realistic they are.
Human feedback must be collected on voting rules and other aggregation mechanisms to determine their usability.
Numerical simulation and experiments with real-life data also can offer experimental insights.

</div>

</section>

<section markdown="1">

## Selected Topics
{: #topics}

Researchers in computational social choice engage in a broad range of research topics, all based on scenarios in which
collective decisions are to be reached based on individual preferences.

<div markdown="1" class="paragraphs-with-lettrine-wrapper">

<span class="topics-header lettrine">Voting and<br>Elections</span>
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

<span class="topics-header lettrine">Fair<br>Allocation</span>
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
