---
layout: default
title: Workshop Series | COMSOC
description: >
  Discover the COMSOC workshop series, the regular meeting place of the computational social choice
  (COMSOC) research community.
---

<section markdown="1">

# The COMSOC Workshop Series

The central event in the international calendar for the COMSOC community is the biannual COMSOC Workshop. 
COMSOC is an interdisciplinary, informal, and inclusive event. 
It attracts both computer scientists and economists (and many others), 
and it welcomes both firmly established members of the community and newcomers. 
Papers are carefully reviewed, yet the proceedings are informal only, 
meaning that authors are free to formally publish their work elsewhere. 
Nobody presents more than one paper. 

The workshop has been taking place every other year since 2006, 
with the exception of 2020, when we skipped a year due to the COVID-19 pandemic. 
The coordination of the series is in the hands of a [Steering Committee](#steering-committee) 
serving at the pleasure of the community.

{% assign sorted_workshops = site.data.workshops | sort: 'year' | reverse %}
{% for workshop in sorted_workshops %}
<div class="workshop-wrapper">
<div class="workshop-image" style="background-image: url('{{ site.baseurl }}/assets/images/workshops/{{ workshop.image }}');">

<div class="image-overlay"></div>

<div class="workshop-details">
<h2><a href="{{ workshop.website_url }}" target="_blank" rel="noreferrer">COMSOC-{{ workshop.year }}</a></h2>
<p>{{ workshop.edition }}</p>
<p>{{ workshop.location }}, {{ workshop.dates }} {{ workshop.year }}</p>
<p><a href="{{ '/proceedings/' | append: workshop.year | relative_url }}">[Proceedings]</a></p>
</div>

</div>
</div>
{% endfor %}

</section>

<section markdown="1" id="steering-committee">

## COMSOC Workshop Steering Committee

The COMSOC workshop series is coordinated by a Steering Committee. This committee consists of four members of the COMSOC research community. By default, these are the PC chairs of the two previous editions of the workshop, although the community may choose to appoint alternative candidates during its Business Meeting at the workshop.

### Committee Members

- [Omer Lev](https://tzin.bgu.ac.il/~omerlev/){:target="_blank" rel="noreferrer"} (Ben-Gurion University): 2023-2027
- [Reshef Meir](https://reshef.net.technion.ac.il/){:target="_blank" rel="noreferrer"} (Technion): 2021-2025
- [Marcus Pivato](https://sites.google.com/site/marcuspivato/home){:target="_blank" rel="noreferrer"} (Panth&eacute;on-Sorbonne University): 2023-2027
- [Bill Zwicker](https://www.union.edu/mathematics/faculty-staff/william-s-zwicker){:target="_blank" rel="noreferrer"} (Union College): 2021-2025

### Past Committee Members

- [Ulle Endriss](https://staff.fnwi.uva.nl/u.endriss/){:target="_blank" rel="noreferrer"} (ILLC, University of Amsterdam): 2006-2012
- [J&eacute;r&ocirc;me Lang](https://www.lamsade.dauphine.fr/~lang/){:target="_blank" rel="noreferrer"} (LAMSADE, Paris-Dauphine University): 2006-2012
- [Vincent Conitzer](https://www.cs.cmu.edu/~conitzer/){:target="_blank" rel="noreferrer"} (Duke University): 2012-2014
- [J&ouml;rg Rothe](https://ccc.cs.uni-duesseldorf.de/~rothe/){:target="_blank" rel="noreferrer"} (University of D&uuml;sseldorf): 2012-2014
- [Felix Brandt](https://www.cs.cit.tum.de/en/dss/brandt/){:target="_blank" rel="noreferrer"} (Technical University Munich): 2012-2016
- [Piotr Faliszewski](https://home.agh.edu.pl/~faliszew/){:target="_blank" rel="noreferrer"} (AGH University of Science and Technology): 2012-2016
- [Ariel Procaccia](https://procaccia.info/){:target="_blank" rel="noreferrer"} (Carnegie Mellon University): 2014-2018
- [Toby Walsh](https://www.cse.unsw.edu.au/~tw/){:target="_blank" rel="noreferrer"} (NICTA and University of New South Wales): 2014-2018
- [Umberto Grandi](https://www.irit.fr/~Umberto.Grandi/){:target="_blank" rel="noreferrer"} (IRIT, University of Toulouse): 2016-2021
- [Jeff Rosenschein](https://www.cs.huji.ac.il/~jeff/){:target="_blank" rel="noreferrer"} (Hebrew University of Jerusalem): 2016-2021
- [Edith Elkind](https://www.cs.ox.ac.uk/people/edith.elkind/){:target="_blank" rel="noreferrer"} (University of Oxford): 2018-2023
- [Lirong Xia](https://www.cs.rpi.edu/~xial/){:target="_blank" rel="noreferrer"} (Rensselaer Polytechnic Institute): 2018-2023

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
archival conferences; and that registration fees are very low (i.e., organisers must find substantial sponsorship to be
able to offer an attractive programme with several high-profile invited speakers).

</section>

<section markdown="1" id="organising">

## Organising a COMSOC Workshop

To get an idea of what is involved in organising one of the workshops in the series, have a look at the (expired)
[Call for Bids]({{ site.baseurl }}/assets/docs/call-for-bids-to-host-comsoc-2023.txt)
to host the 2023 edition.

</section>
