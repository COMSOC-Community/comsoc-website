---
layout: default
title: Computational Social Choice
---

# What is Computational Social Choice?

Computational Social Choice (shortened as COMSOC) has evolved as a dynamic interdisciplinary field of 
study at the interface of social choice theory and computer science, fostering an exchange of ideas 
in both directions.
On one hand, it applies techniques from computer science, such as complexity analysis and algorithm
design, to study social choice mechanisms like voting procedures or fair division algorithms.
On the other hand, it imports concepts from social choice theory into computing, applying them to 
problems in multi-agent systems or network design

## Interdisciplinarity by Design

COMSOC is by design an interdisciplinary research field. 
It draws inspiration and methodologies from a diverse range of disciplines, including computer science,
artificial intelligence, logic, political science, and economics. This interdisciplinary nature allows
researchers to tackle complex problems in collective decision-making from multiple perspectives.

<p style="display: inline-block;">
<span class="interdisciplinary-header lettrine">Algorithmic<br>Insights</span>
Social choice theory focuses on designing and analyzing methods for collective decision-making,
including voting protocols and procedures for fair resource division among agents. Classical work
in this field establishes abstract results on the existence of procedures meeting certain requirements,
often without considering computational aspects. Complexity analysis and algorithm design are now integral
to studying aggregation procedures. To name a few standard problems, COMSOC researchers have typically
studied algorithmic issues linked to determining the outcome of an aggregation scenario, to selecting an
outcome that satisfies a given property, or to manipulating voting protocols.
</p>

<p style="display: inline-block;">
<span class="interdisciplinary-header lettrine">Information<br>Encoding</span>
Methods from social choice theory may face challenges when dealing with a large number of alternatives,
especially those with combinatorial structures. Computational social choice addresses problems like
negotiation over indivisible goods or committee elections, applying artificial intelligence and logic
techniques for the compact representation of preferences.
</p>

<p style="display: inline-block;">
<span class="interdisciplinary-header lettrine">Thinking<br>Logically</span>
Logic is applied to formally specify, verify, and analyze social procedures, known as "social software".
Similar to how logic is used in computer science to specify system behavior, it can be used to define
social procedures like voting protocols or fair division algorithms.
</p>

<p style="display: inline-block;">
<span class="interdisciplinary-header lettrine">Strategic<br>Interplay</span>
Voters reason about the voting process as a whole and the impact they can have on its outcome.
Social choice theory thus builds on game-theoretic concepts to analyse strategic interaction in
collective decision-making
There is thus an important exchange of ideas between COMSOC and algorithmic game theory (which is 
to game theory what COMSOC is to social choice).
</p>

<p style="display: inline-block;">
<span class="interdisciplinary-header lettrine">Experimental<br>Assessment</span>
Social choice problems mostly models real-life processes.
There is thus an important interplay between (computational) social scientist and behavioural scientists.
Assumptions and hypotheses can thus be tested in controlled environments to assess how realistic they are.
Feedback can be collected on voting rules and other aggregation mechanisms to determine their usability.
Numerical simulation and experiments with real-life data are also often run to offer experimental insights
on the object of study: frequency of occurrence of specific phenomenon, satisfaction degree of a given
property...
</p>

## Selected Topics

COMSOC researchers engage in a broad range of research topics, all based on scenarios in which 
collective decisions are to be reached based on individual preferences.

<p style="display: inline-block;">
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
</p>

<p style="display: inline-block;">
<span class="topics-header lettrine">Fair division</span>
The second main cornerstone of social choice theory is fair division, the study
of how to allocate resources among agents who have different tastes over the resources.
Typical examples include how to share a cake among agents who like different parts of the cakes,
how to partition a piece of land, how to assign tasks within a team...
</p>

<p style="display: inline-block;">
<span class="topics-header lettrine">Coalition formation</span>
How to assign students to schools, doctors to hospitals? 
Which teams would be formed if we let the students freely decide?
These questions fall into the broad research topic of coalition formation.
The key point of these scenarios is an outcome consists in disjoints groups of agents (with potential
additional constraints) and that agents have preferences over who else is part of their group.
</p>

<p style="display: inline-block;">
<span class="topics-header lettrine">Opinion<br>Aggregation</span>
Lastly, COMSOC researchers also look into how to aggregate,
or merge, conflicting opinions about the truth value of given propositions when only certain
combination of propositions are acceptable.
This can be seen as aggregation problems over logical formulas, given the constraint that the
collective outcome needs to be logically consistent.
Opinions here can take the form of a judgment (when investigating judgment aggregation) or beliefs
(in the case of belief merging).
</p>

## Main References

The following books offer comprehensive views of either COMSOC as a whole or some major research 
topics. Check them up!

<div class="textbooks">
    <a href="https://www.cambridge.org/download_file/951600"><img src="{{ site.baseurl }}/assets/images/HandbookCOMSOC.png" alt="Cover of the Handbook of Computational Social Choice"></a>
    <a href="https://research.illc.uva.nl/COST-IC1205/BookDocs/TrendsCOMSOC.pdf"><img src="{{ site.baseurl }}/assets/images/TrendsCOMSOC.png" alt="Cover of the book Trends in Computational Social Choice"></a>
    <a href="https://link.springer.com/book/10.1007/978-3-662-47904-9"><img src="{{ site.baseurl }}/assets/images/EconomicsComputation.jpeg" alt="Cover of the book Economics and Computation"></a>
    <a href="https://link.springer.com/content/pdf/10.1007/978-3-031-09016-5.pdf"><img src="{{ site.baseurl }}/assets/images/MultiWinnerApproval.jpeg" alt="Cover of the book Multi-Winner Voting with Approval Preferences"></a>
</div>
