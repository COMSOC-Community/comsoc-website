# The COMSOC Community Website

This is the main website used by the Computation Social Choice (COMSOC) research community.
It is intended to serve as a general presentation platform for COMSOC, while also
providing all kinds of relevant resources and information to COMSOC researchers.

This website is made for the community *by* the community. If you want to 
contribute to its development, or think that some changes are needed, please use this 
GitHub page (or contact us if you don't know what to do). General instructions for the
most common modifications are provided below.

## How To

This website has been designed so as to make maintaining it as easy as possible.
The website is automatically updated after each push to the repository, so all you have
to do is to push your changes, wait a bit, and check that the outcome looks fine.

Below is a description of how to perform the most common management tasks:

- [PhD Theses](#modifyadd-a-phd-thesis)
- [COMSOC Workshop Event](#modifyadd-a-comsoc-workshop-event)
- [COMSOC Workshop Proceedings](#modifyadd-proceedings-of-a-comsoc-workshop)
- [COMSOC Video Seminar](#modifyadd-a-past-event-of-the-comsoc-video-seminar)
- [Tools](#modifyadd-a-tool)
- [Special Issue](#modifyadd-a-journal-special-issue)
- [Course](#modifyadd-a-course)
- [Group Photos](#modifyadd-a-group-photo-for-the-front-page)
- [Archive Static Website](#archive-a-static-website)

Note that if you are not a 'GitHub collaborator' of this repository, you first need to clone the
repository and then submit pull requests (so in that case, the site will update only after one of
the maintainers has approved your pull request).

### Modify/Add a PhD thesis

To add a new PhD thesis, add the new entry to the file `docs/_data/theses.yml` 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/theses.yml)
and it's all automatic from there. 
To correct an existing entry, simply find it in the file and modify it.

The YAML format for a thesis is as shown in the example below:

```yaml
- name: Simon Rey
  affiliation: University of Amsterdam, ILLC
  year: 2023
  url: https://hdl.handle.net/11245.1/99e2cdb9-0c9a-46ca-8568-8bb2b77ca225
  title: "Variations on Participatory Budgeting: An Example"
  supervisors:
    - Ulle Endriss
    - Ronald de Haan
    - Jan Maly
```

Note that for titles including a ":" the title string needs to be put in quotes.
If there is only one supervisor, keep the syntax and only include a single element in 
the `supervisors` list.

For the URL, use either a permanent link provided by the degree-granting institution 
or add a PDF to the repository (other kinds of links usually break after a few years).
To add a PDF file, add it to the folder `docs/assets/theses/`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/assets/theses/).
The `url` entry then needs to be: `url: assets/theses/FILE_NAME.pdf`.

### Modify/Add a COMSOC Workshop Event

To add a new edition of the COMSOC Workshop, add the new entry to the file 
`docs/_data/workshops.yml` [\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/workshops.yml)
and it will be automatically added to the website. 
To correct an existing entry, simply find it in the file and modify it.

The .yml format for a COMSOC Workshop is as shown in the example below.

```yaml
- year: 2023
  edition: 9th International Workshop on Computational Social Choice
  location: Beersheba
  dates: 3-5 July
  website_url: https://tzin.bgu.ac.il/~omerlev/comsoc.html
  image: COMSOC_2023_banner.jpg
```

Note the reference to the image of the workshop (the banner used in the standard theme of the workshop
series). The image file itself needs to be added to the repository `docs/assets/images/workshops/`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/assets/images/workshops).
This image is used as background for the box describing the workshop.

### Modify/Add Proceedings of a COMSOC Workshop

The proceedings of the COMSOC Workshops are described in a .yml file.
To add the proceedings of a new workshop create a file `docs/_data/proceedingsYEAR.yml`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/_data) 
where `YEAR` corresponds to the year of the workshop.

The YAML format is as in the following example:

```yaml
- title: The Computational Complexity of Choice Sets
  authors:
    - Felix Brandt
    - Felix Fischer
    - Paul Harrenstein
  pdf_file: Brandt.pdf
  sort_key: BrandtFischerHarrenstein
  accepted_as: Presentations
```

The `accepted_as` describes the format in which the paper as been accepted. This value needs to be
exactly one from the list `proceedings_publication_types` defined in the `docs/_config.yml` file
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/_config.yml). If you
use a different value, the display will not work. Update the list if needed. Note that the order
of this list defines the order in which the different sections are displayed on a proceedings 
page.

To create the page corresponding to the proceedings, create a file `docs/proceedings-YEAR.md`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/) 
where `YEAR` corresponds to the year of the workshop. This file should contain the following information:

```markdown
---
layout: proceedings
title: Proceedings COMSOC Workshop 2006
year: 2006
permalink: /proceedings/2006/
complete_proceedings: /assets/proceedings/comsoc2006.pdf
---
```
The `complete_proceedings` is not mandatory; it corresponds to the full proceedings (it is for now
only available for the first four editions). If such a file exists, add it to the folder 
`docs/assets/proceedings/`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/assets/proceedings/) 

To add the PDF files of the papers, create a folder `assets/proceedings/comsoc-YEAR/` 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/assets/proceedings/) 
where `YEAR` corresponds to the year of the workshop. The PDF files have to be dumped there.

Finally, update the file `docs/_layouts/proceedings.html`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/_layouts/proceedings.html)
by adding the year in the `all_years` array in the header:

```markdown
---
layout: default
all_years: [2006, 2008, 2010, 2012, 2014, 2016, 2018, 2021, 2023]
---
```

### Modify/Add a Past Event of the COMSOC Video Seminar

Past sessions of the COMSOC video seminar are described in the file `docs/_data/videoseminar.yml` 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/videoseminar.yml).

The YAML format is as follows:

```yaml

- date: 2020-04-24
  chair: Dominik Peters
  video_links:
    - https://www.youtube.com/watch?v=cDbFeLD0WTw
  presentations:
    - title: "Computational Social Choice for Moral Artificial Intelligence"
      speaker:
        name: "Vincent Conitzer"
        affiliation: "Duke"
        url: https://www.cs.cmu.edu/~conitzer/
      abstract: >
        Many algorithms in AI require an objective function to be specified.  When such an algorithm is to be deployed
        in the real world, it is often not obvious what the objective function should be.  For example, there are often
        nontrivial ethical tradeoffs.  Generally, stakeholders will disagree on how these should be made.  Moreover, 
        even for themselves, they will generally not be able to write down a complete objective function; perhaps at 
        most, they can be asked to make a few judgments on some concrete examples.  How do we aggregate these individual
        judgments into an objective function for the algorithm to use?
      joint_work: >
        Lok Chan, Yuan Deng, John Dickerson, Kenzie Doyle, Rachel Freedman, Max Kramer, Duncan McElfresh, 
        Jana Schaich Borg, Walter Sinnott-Armstrong and Hanrui Zhang
      slides_link: https://drive.google.com/file/d/1tZGDn40Etd_pVtf5jFZYIHpfQtVbYm2B/view

    - title: "Keeping Your Friends Close: Land Allocation with Friends"
      speaker:
        name: "Edith Elkind"
        affiliation: "Oxford"
        url: https://www.cs.ox.ac.uk/people/edith.elkind/
      abstract: >
        We examine the problem of assigning plots of land to prospective buyers who prefer living next to their friends.
        They care not only about the plot they receive, but also about their neighbors. This externality results in a
        highly non-trivial problem structure, as both friendship and land value play a role in determining agent behavior.
        We examine mechanisms that guarantee truthful reporting of both land values and friendships. We propose variants 
        of random serial dictatorship (RSD) that can offer both truthfulness and welfare guarantees. Interestingly, our
        social welfare guarantees are parameterized by the value of friendship: if these values are low, enforcing truthful
        behavior results in poor welfare guarantees and imposes significant constraints on agents' choices; if they are 
        high, we achieve good approximation to the optimal social welfare.
      joint_work: "Neel Patel, Alan Tsang and Yair Zick"
      links:
        - "https://arxiv.org/abs/2003.03558"
      slides_link: https://drive.google.com/file/d/1XHgQayu2LDD0RszG7xTHDHpmQcJ_QPpF/view
```

The `video_links` entry has to be a list, even when there is only one (to account for some sessions
for which the video has been split in two). A seminar session can also have a `title` entry
(see the rump session example below). If this is not provided, the title follows this format:
`DATE: NAMES_OF_PRESENTERS`.

For a presentation, `joint_work`, `links` and `slides_link` are optional. The `links` entry should
always be a list, even if there is only one link. It should not contain the link to the slides
(use `slides_link` for this). The list of co-authors (in `joint_work`) is comma-separated with an 
`and` linking the last two co-authors.

For rump sessions, the format is as follows:

```yaml
- date: 2020-05-22
  chair: Ulle Endriss
  video_links:
    - https://www.youtube.com/watch?v=_hRiHF_V39o
  title: "Rump Session"
  presentations:
    - title: Nick Arnosti (Columbia)
    - title: Haris Aziz (Sydney)
    - title: Paul Gölz (CMU)
    - title: Ronald de Haan (Amsterdam)
    - title: Hadi Hosseini (Rochester)
    - title: Neeldhara Misra (Gandhinagar)
    - title: Joe Singleton (Cardiff)
    - title: Piotr Skowron (Warsaw)
    - title: Zoi Terzopoulou (Amsterdam)
    - title: Stanislav Zhydkov (Warwick)
```

The name of the presenters is used here as the `title` of their presentation. Do not use the `speaker`
entry.

### Modify/Add a Tool

Tools are described in the file `docs/_data/tools.yml` 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/tools.yml).

The YAML format is as exemplified below:

```yaml
- name: preflib-tools
  topic: Preferences
  category: Preferences
  reference-tool: false
  type: Python
  url: https://github.com/PrefLib/preflibtools
  contributors:
    - name: Simon Rey
      url: https://simonrey.fr/
      maintainer: true
  language: Python
  has-tests: true
  documentation-url: https://preflib.github.io/preflibtools/
  description: >
    The PrefLib-Tools is a set of Python tools developed to work with preference data from the
    PrefLib.org website. This package provides input and output operations on PrefLib instances,
    and several property checks for the instance (preference domain, etc...)
```

The `topic` attribute needs to be one of the value of the list `tools_topics` defined in the `docs/_config.yml` file
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/_config.yml). If you
use a different value, the display will not work. Update the list if needed.

The `category` attribute indicates the end goal of the tool. Current values are: `Preferences`,
`Aggregation`, `Analysis`, `Application` and `Outreach`. If you add additional values, remember to
update the first section of the `docs/tools.md` file
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/tools.md).

The `reference-tool` attribute indicate if this tool should be considered as a reference tool. These
are tools that deserve special attention because of their significance within the COMSOC ecosystem.

The `type` attribute represents the kind of tool it is: "Website", "Python", ...

The `language` attribute is the programing language used to develop the tool. It is used to define
the best practices.

The attribute `has-tests` indicates if unit-tests are included. This is mostly relevant for code
libraries.

The `documentation-url` attribute points to the documentation of the tool. This is mostly relevant
for code libraries.

### Modify/Add a Journal Special Issue

Journal special issues are described in the file `docs/_data/specialissues.yml` 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/specialissues.yml).

The YAML format is as exemplified below:

```yaml
- journal: "Annals of Mathematics and Artificial Intelligence"
  topic: "Algorithms, Approximation, and Empirical Studies in Behavioral and Computational Social Choice"
  year: 2013
  volume: "68:1&ndash;3"
  url: "https://link.springer.com/journal/10472/68/1/page/1"
```

The `volume` entry typically includes both the volume and the issue number (but not all journals
follow this format).

### Modify/Add a Course

Courses are described in the file `docs/_data/courses.yml` 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/courses.yml).

The YAML format is as exemplified below:

```yaml
- title: Computational Social Choice
  lecturer: Rohit Vaish
  lecturer_url: https://rohitvaish.in/
  institution: Indian Institute of Technology Delhi
  institution_url: https://home.iitd.ac.in/
  editions:
    - url: https://rohitvaish.in/Teaching/2023-Fall/
      name: 2023
    - url: https://rohitvaish.in/Teaching/2022-Fall/
      name: 2022-Fall

```

### Modify/Add a Group Photo for the Front Page

The photos displayed on the front page are described in the file `docs/_data/groupphotos.yml` 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/groupphotos.yml).

The format is as follows:

```yaml
- src: Matching_Summer_School_2013.jpg
  title: Summer School on Matching Problems, Markets, and Mechanisms in Budapest (2013)
  url: https://archive.illc.uva.nl/COST-IC1205/Events/Action-Summer-Schools/Budapest-2013/index.html
```

The `src` points to the photo in the directory `docs/assets/images/group-photos`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/assets/images/group-photos).
The `url` points to the website of the event where the photo was taken.

If you are adding a new group photo, do not forget to put in the directory `docs/assets/image/group-photos`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/assets/images/group-photos).

### Archive a Static Website

To serve a standalone HTML website form the Jekyll project, perform the following steps:

- In the `docs/_collections` [\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_collections) folder, add an HTML file corresponding to the website you are adding, for instance `website.html`
- The content of `docs/_collections/website.html` should be:

```
---
permalink: /URL_TO_WEBSITE/:title
---
```
Here `URL_TO_WEBSITE` is the path at which the website is anchored.

- Create a folder `docs/archive/website` [\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/archive) where `website` is the name of the HTML representing the collection.
- Dump the content of the website in the folder.
- You are done.

This is used, for instance, to archive websites of old COMSOC Workshops.

Note that Server Side Includes like `<!--#include file="header.html" -->` are not supported.
If you have a website that uses them, you should first flatten it. Similarly, you cannot serve
a PhP website that way. Convert it into HTML before.

## Development

The website was developed in Jekyll to provide easy integration with the GitHub tools. 
It should be relatively easy for anyone to make basic changes, even if they are not very
familiar with Jekyll.

All the source files for the website are placed in the `docs` folder (due to GitHub 
Page requirements).

### Layouts

The general layouts of the pages are described in the `_layouts` folder 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/_layouts/). 
These layouts define the general structure of every page.

### Pages

All pages are described in markdown files, mostly located in the root of the `docs` folder 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/).

They all start with a header that indicates which layout is to be used, 
together with some additional information:

```
---
layout: default
title: This is the Title of the Page
---
```

Note that markdown files can incorporate HTML tags in case you need more flexibility for the display.
Markdown parsing is automatically disabled in an HTML tag. You can enable it by adding the
attribute `markdown="1"` to the HTML tag:

```html
<section markdown="1">

# What is Computational Social Choice?
{: #comsoc}

The research field of computational social choice (COMSOC) 
is concerned with the design and analysis of methods for collective decision making. 
It is a dynamic interdisciplinary field of study at the interface of computer science and economics, 
fostering an exchange of ideas in both directions.
</section>
```

### Page Structure

The page structure is as follows:
- Header with main menu (described in `docs/_layouts/default` [\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/_layouts/default.html))
- Alternation of `<section> </section>` for the content of the page.
- If there is need for in-page navigation links, there are added in the first section of the page (more on that below).
- Footer with the additional pages (described in `docs/_layouts/default` [\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/_layouts/default.html))

About the in-page navigation links. The section has to have the class `section-with-navs`. The 
navigation links are described in a `<div class="page-navigation-wrap"> </div>` that needs to be
the last child of the `<section> </section>`. See the example below:

```html
<section markdown="1" class="section-with-navs">

# Events

Besides the [COMSOC Workshop](workshops) and the [COMSOC Video Seminar](video-seminar),
there are also lots of other events where work on COMSOC gets presented and where COMSOC people meet.
On this page you will find a non-exhaustive list of such events.

<div class="page-navigation-wrap">
<div class="page-navigation">
<span><a href="#summer-schools">Summer Schools</a></span>
<span><a href="#dagstuhl">Dagstuhl Seminars</a></span>
<span><a href="#other">Other Events</a></span>
</div>
</div>
</section>
```

### Style

The CSS style sheets are located in the `assets/css` folder 
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/assets/css).

### Data

Many pages (PhD theses, seminar sessions, workshop proceedings, ...) are automatically constructed
based on some data. These data files are located in the `_data` folder
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/_data/).
They are all `.yml` files, the syntax of which is described above.

### Configuration

Global parameters for the website are stored in the file `docs/_config.yml`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/config.yml/).
You can typically change the URL settings there, or update the link to the main repository.

### Local Development

You can clone the repository and update it locally on your machine.
On your machine, you can install all the prerequisites for a Jekyll website
([see the Jekyll docs](https://jekyllrb.com/docs/)) and then run things locally.

To serve the website locally and see your changes live, run the following command inside the
`docs` folder:

```shell
bundle exec jekyll serve
```

To build the website as a static HTML site, run the following command inside the
`docs` folder:

```shell
bundle exec jekyll build
```

Note that you may have to change some parameters for this to run smoothly. A typical example
is the `baseurl` parameter. Do not change the one in the `_config.yml` file, but simply pass
the argument `--baseurl YOUR_BASE_URL` to the above commands.

