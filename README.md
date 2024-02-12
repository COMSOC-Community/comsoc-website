# The COMSOC Community Website

This is the main website used by the Computation Social Choice (COMSOC) research community.
It is intended to serve as a general presentation platform for COMSOC, while also
providing all kinds of relevant resources and information to COMSOC researchers.

This website is made for the community *by* the community. If you want to 
contribute to its development, or think that some changes are needed, please use this 
GitHub page (or contact us if you don't know what to do). General instructions for the
most common modifications are provided below.

## How To

This website has been designed so as to as to make maintaining it as easy as possible.
The website is automatically updated after each push to the repository, so all you have
to do is to push your changes, wait a bit, and check the outcome looks fine.

Below is a description of how to perform the most common management tasks.

Note that if you are not a "GitHub collaborator" of this repository, 
you first need to clone the repository and then submit pull requests
(so in that case, the site will update only after one of the maintainers has approved your pull request).

### Modify/Add a PhD thesis

To add a new PhD thesis, add the new entry to the file
`docs/_data/theses.yml` [\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/theses.yml)
and it's all automatic from there. 
To correct an existing entry, simply find it in the file and modify it.

The .yml format for a thesis is as shown in the example below.
Note that for titles including a ":" the title string needs to be put in quotes.
If there is only one supervisor, keep the syntax and only include a single element in 
the `supervisors` list.

```
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

### Modify/Add a COMSOC Workshop Event

To add a new edition of the COMSOC Workshop, add the new entry to the file 
`docs/_data/workshops.yml` [\[link\]](https://github.com/COMSOC-Community/comsoc-website/blob/main/docs/_data/workshops.yml)
and it will be automatically added to the website. 
To correct an existing entry, simply find it in the file and modify it.

The .yml format for a COMSOC Workshop is as shown in the example below.

```
- year: 2023
  edition: 9th International Workshop on Computational Social Choice
  location: Beersheba
  dates: 3-5 July
  website_url: https://tzin.bgu.ac.il/~omerlev/comsoc.html
  image: COMSOC_2023_banner.jpg
```

Note the reference to the image of the workshop (the banner used in the standard theme of the workshop
series). The image file iteself needs to be added to the repository `docs/assets/images/workshops/`
[\[link\]](https://github.com/COMSOC-Community/comsoc-website/tree/main/docs/assets/images/workshops).
This image is used as background for the box describing the workshop.

### Modify/Add Proceedings of a COMSOC Workshop

The proceedings of the COMSOC Workshops are described in a .yml file.
To add the proceedings of a new workshop create a file `docs/_data/proceedingsYEAR.yml` where `YEAR` corresponds to the year of the workshop.

Add to the list in layout [[UNFINISHED]]

### Add a static HTML website

To serve a standalone HTML website form the Jekyll project, perform the following steps:

- In the `docs/_collections` folder, add an HTML file corresponding to the website you are adding, for instance `website.html`
- The content of `docs/_collections/website.html` should be:
```
---
permalink: /URL_TO_WEBSITE/:title
---
```
Where `URL_TO_WEBSITE` is the path at which the website is anchored.

- Create a folder `docs/archive/website` where `website` is the name of the HTML representing the collection.
- Dump the content of the website in the folder.
- You are done.

This is useful, for instsnce, to archive the website of an old COMSOC Workshop.

Note that Server Side Includes like `<!--#include file="header.html" -->` are not supported.
If you have a website that uses them, you should first flatten it.

## Development

The website was developed in Jekyll to provide easy integration with the GitHub tools. 
It should be relatively easy for anyone to make basic changes, even if they are not very
familiar with Jekyll.

All the source files for the website are placed in the `docs` folder (due to GitHub 
Page requirements).

### Layouts

The general layouts of the pages are described in the `_layouts` folder. These layouts
define the general structure of every page.

### Pages

All pages are described in markdown files, mostly located in the root of the `docs` folder.

They all start with such a header that indicates which layout is to be used, 
together with some additional information:

```
---
layout: default
title: This is the Title of the Page
---
```

Note that markdown files can incorporate HTML tags in case you need more flexibility for the display.

### Style

The CSS style sheet is located in the `assets/css` folder.

### Data

Many pages (PhD theses, seminar sessions, worskhop proceedings, ...) are automatically constructed
based on some data. These data files are located in the `_data` folder. They are
all `.yml` files, the syntax of which can be easily deduced from an example.
