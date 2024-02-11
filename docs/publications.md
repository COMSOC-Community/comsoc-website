---
layout: default
title: Publications | COMSOC
---

<section markdown="1" class="section-with-navs">

# Publications

Owing to its interdisciplinary nature, research in computational social choice gets published at a very wide variety of venues. 
This includes, in particular, conference proceedings and journals in AI (such as 
[AAMAS](http://dblp.uni-trier.de/db/conf/atal/), 
[IJCAI](http://dblp.uni-trier.de/db/conf/ijcai/), 
[AAAI](http://dblp.uni-trier.de/db/conf/aaai/), 
[AIJ](http://dblp.uni-trier.de/db/journals/ai/), 
[JAIR](http://dblp.uni-trier.de/db/journals/jair/)), 
conference proceedings and journals at the interface of computer science with economics (such as 
[EC](http://dblp.uni-trier.de/db/conf/sigecom/), 
[WINE](http://dblp.uni-trier.de/db/conf/wine/), 
[SAGT](http://dblp.uni-trier.de/db/conf/sagt/), 
[ADT](http://dblp.uni-trier.de/db/conf/aldt/), 
[TEAC](http://dblp.uni-trier.de/db/journals/teco/)), 
and journals in economics (such as 
[SCW](http://dblp.uni-trier.de/db/journals/scw/), 
[JET](http://dblp.uni-trier.de/db/journals/jet/)), 
but occasionally also journals in discrete mathematics, logic, political science, and philosophy.

Below we gather information on relevant books, which might offer a particularly convenient entry point into the field, 
as well as an overview of spceial issues on topics in computational social choice published in a various journals.

<div class="page-navigation-wrap">
<div class="page-navigation">
<span><a href="#books">Books</a></span>
<span><a href="#special-issues">Special Issues</a></span>
</div>
</div>
</section>

<section markdown="1">

## Published Books
{: #books }

The following books offer comprehensive overviews of either COMSOC as a whole 
or some major research topics within COMSOC. Have a look!

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
{: #special-issues }

{% assign sorted_special_issues = site.data.specialissues | sort: 'year' | reverse %}

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
