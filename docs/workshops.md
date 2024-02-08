---
layout: default
title: Workshop Series | COMSOC
---

<section markdown="1">

# The COMSOC Workshop Series

The COMSOC workshop series aims to bring together diverse communities, including computer scientists
interested in computational aspects of social choice, researchers in artificial intelligence and 
multiagent systems using social choice ideas for organizing artificial software agent societies, 
logicians interested in logic-based specification and analysis of social procedures, and experts in
social choice theory.

These workshops occur biannually, with the exception of 2020 due to the COVID-19 pandemic. The 
coordination is managed by a [Steering Committee](#comsoc-workshop-steering-committee).

{% assign sorted_workshops = site.data.workshops | sort: '-date' %}
{% for workshop in sorted_workshops %}
<div class="workshop-wrapper">
<div class="workshop-image" style="background-image: url('{{ site.baseurl }}/assets/images/workshops/{{ workshop.image }}');">

<div class="image-overlay"></div>

<div class="workshop-details">
<h2><a href="{{ workshop.website_url }}">COMSOC-{{ workshop.year }}</a></h2>
<p>{{ workshop.edition }}</p>
<p>{{ workshop.location }}, {{ workshop.dates }} {{ workshop.year }}</p>
<p><a href="{{ '/proceedings/' | append: workshop.year | relative_url }}">[Proceedings]</a></p>
</div>

</div>
</div>
{% endfor %}

</section>

<section markdown="1">

## COMSOC Workshop Steering Committee

The COMSOC workshop series is coordinated by a Steering Committee. This committee consists of four members of the COMSOC research community. By default, these are the PC chairs of the two previous editions of the workshop, although the community may choose to appoint alternative candidates during its Business Meeting at the workshop.

### Committee Members

- [Omer Lev](https://tzin.bgu.ac.il/~omerlev/){:target="_blank"} (Ben-Gurion University): 2023-2027
- [Reshef Meir](https://reshef.net.technion.ac.il/){:target="_blank"} (Technion): 2021-2025
- [Marcus Pivato](https://sites.google.com/site/marcuspivato/home){:target="_blank"} (Panth&eacute;on-Sorbonne University): 2023-2027
- [Bill Zwicker](https://www.union.edu/mathematics/faculty-staff/william-s-zwicker){:target="_blank"} (Union College): 2021-2025

### Past Committee Members

- [Ulle Endriss](https://staff.fnwi.uva.nl/u.endriss/){:target="_blank"} (ILLC, University of Amsterdam): 2006-2012
- [J&eacute;r&ocirc;me Lang](https://www.lamsade.dauphine.fr/~lang/){:target="_blank"} (LAMSADE, Paris-Dauphine University): 2006-2012
- [Vincent Conitzer](https://www.cs.cmu.edu/~conitzer/){:target="_blank"} (Duke University): 2012-2014
- [J&ouml;rg Rothe](https://ccc.cs.uni-duesseldorf.de/~rothe/){:target="_blank"} (University of D&uuml;sseldorf): 2012-2014
- [Felix Brandt](https://www.cs.cit.tum.de/en/dss/brandt/){:target="_blank"} (Technical University Munich): 2012-2016
- [Piotr Faliszewski](https://home.agh.edu.pl/~faliszew/){:target="_blank"} (AGH University of Science and Technology): 2012-2016
- [Ariel Procaccia](https://procaccia.info/){:target="_blank"} (Carnegie Mellon University): 2014-2018
- [Toby Walsh](https://www.cse.unsw.edu.au/~tw/){:target="_blank"} (NICTA and University of New South Wales): 2014-2018
- [Umberto Grandi](https://www.irit.fr/~Umberto.Grandi/){:target="_blank"} (IRIT, University of Toulouse): 2016-2021
- [Jeff Rosenschein](https://www.cs.huji.ac.il/~jeff/){:target="_blank"} (Hebrew University of Jerusalem): 2016-2021
- [Edith Elkind](https://www.cs.ox.ac.uk/people/edith.elkind/){:target="_blank"} (University of Oxford): 2018-2023
- [Lirong Xia](https://www.cs.rpi.edu/~xial/){:target="_blank"} (Rensselaer Polytechnic Institute): 2018-2023

### Responsibilities of the Committee

The role of the Steering Committee is to:
1. Select the venue and PC chairs of the next edition of the workshop.
2. Ensure continuity from one edition of the workshop to the next.

Regarding point (1), the Steering Committee will aim to decide on the next venue and PC chairs at least 18 months before 
the event. The preferred method for choosing a venue is by publicly soliciting bids to host the workshop. One PC chair is
usually affiliated with the hosting institution; at least one of the two PC chairs should be a long-time member of the 
COMSOC research community.

Regarding point (2), some of the characteristics of the COMSOC workshop series are that COMSOC is an interdisciplinary, 
informal, and inclusive event. Specifically, this means that there is no attempt to provide a narrow definition of topics
of interest; that both established researchers and newcomers to the field can present their work; that authors can expect
to receive in-depth feedback on their papers from the members of a dedicated PC; that there is no attempt to compete with
archival conferences; and that registration fees are very low (i.e., organizers must find substantial sponsorship to be
able to offer an attractive program with several high-profile invited speakers).

</section>

<section markdown="1">

## Organising a COMSOC Workshop

To get an idea of what is involved in organising the COMSOC Workshop, have a look at the (expired)
[Call for Bids]({{ site.baseurl }}/assets/docs/call-for-bids-to-host-comsoc-2023.txt)
to host the 2023 edition.

</section>