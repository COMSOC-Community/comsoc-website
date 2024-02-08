---
layout: default
title: Publications | COMSOC
---

<section markdown="1">

# Publications

We gather below interesting publications relating to COMSOC. Our goal is not to provide a list of
COMSOC papers but rather more substantial publications.

</section>

<section markdown="1">

## Published Books

The following books offer comprehensive views of either COMSOC as a whole or some major research
topics. Check them up!

### Overview Books

<div class="books-wrapper">
  <a href="https://link.springer.com/book/10.1007/978-3-8274-2571-3"><img src="{{ site.baseurl }}/assets/images/books/EinfuehrungCOMSOC.jpeg" alt="Cover of the book Einführung in Computational Social Choice"></a>
  <a href="https://www.cambridge.org/download_file/951600"><img src="{{ site.baseurl }}/assets/images/books/HandbookCOMSOC.png" alt="Cover of the Handbook of Computational Social Choice"></a>
  <a href="https://link.springer.com/book/10.1007/978-3-662-47904-9"><img src="{{ site.baseurl }}/assets/images/books/EconomicsComputation.jpeg" alt="Cover of the book Economics and Computation"></a>
  <a href="https://archive.illc.uva.nl/COST-IC1205/Book/"><img src="{{ site.baseurl }}/assets/images/books/TrendsCOMSOC.png" alt="Cover of the book Trends in Computational Social Choice"></a>
  <a href="https://link.springer.com/book/10.1007/978-3-030-18050-8"><img src="{{ site.baseurl }}/assets/images/books/FutureEconomicDesign.jpeg" alt="Cover of the book The Future of Economic Design"></a>
</div>

### Books on Specific Topics

<div class="books-wrapper">
  <a href="https://link.springer.com/book/10.1007/978-3-031-01556-4"><img src="{{ site.baseurl }}/assets/images/books/ShortIntroPref.jpeg" alt="Cover of the book A Short Introduction to Preferences"></a>
  <a href="https://link.springer.com/book/10.1007/978-3-031-01568-7"><img src="{{ site.baseurl }}/assets/images/books/JudgmentAggregationPrimer.jpeg" alt="Cover of the book Judgement Aggregation: A Primer"></a>
  <a href="https://link.springer.com/book/10.1007/978-3-031-01579-3"><img src="{{ site.baseurl }}/assets/images/books/StrategicVoting.jpeg" alt="Cover of the book Strategic Voting"></a>
  <a href="https://link.springer.com/content/pdf/10.1007/978-3-031-09016-5.pdf"><img src="{{ site.baseurl }}/assets/images/books/MultiWinnerApproval.jpeg" alt="Cover of the book Multi-Winner Voting with Approval Preferences"></a>
</div>

</section>

<section markdown="1">

## Journal Special Issues

Research related to COMSOC is being published in many different venues. Here is a list of journal
special issues on COMSOC-related topics.


{% assign sorted_special_issues = site.data.specialissues | sort: '-year' %}

<ul id="special-issues-list">
{% for special_issue in sorted_special_issues %}
<li>
<h4><a href="{{ special_issue.url }}">{{ special_issue.topic }}</a></h4>
<i>{{ special_issue.journal }}</i>, {{ special_issue.volume }}, {{ special_issue.year }}
{% if special_issue.call_for_papers %}<br><a class="resource-link" href="{{ special_issue.call_for_papers }}">[Call for Papers]</a>{% endif %}
</li>
{% endfor %}
</ul>

</section>
