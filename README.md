# The COMSOC Cumminity Website

This is the main website used by the Computation Social Choice (COMSOC) research community.
This website is intended to serve as a general presentation platform of COMSOC while also
providing all kinds of relevant resources and information to COMSOC researchers.

This website is made for the community *by* the community. If you want to 
contribute to its development, or think that some changes are needed, please use this 
GitHub page (or contact us if you don't know what to do). General instructions for the
most common modifications are provided below.

## How To

This website has been designed so that maintaining is as easy as possible.
The website is automatically updated after each push to the repository so all you have
to do is to push your changes, wait a bit and see the outcome.

Below is a description of how to perform the most common management tasks.

### Modify/Add a PhD thesis

To add a new PhD theis simply add the new entry to the `docs/_data/theses.yml` and it's all automatic from there.
To modify an existing entry simply find it in the `docs/_data/theses.yml` file and modify it.

The .yml format for a thesis is as presented on this example:

```
- name: Simon Rey
  affiliation: University of Amsterdam, ILLC
  year: 2023
  url: https://hdl.handle.net/11245.1/99e2cdb9-0c9a-46ca-8568-8bb2b77ca225
  title: Variations on Participatory Budgeting
  supervisors:
    - Ulle Endriss
    - Ronald de Haan
    - Jan Maly
```

### Modify/Add Proceedings of a COMSOC Workshop

The proceedings of the COMSOC Workshops are described in a .yml file.
To add the proceedings of a new workshop create a file `docs/_data/proceedingsYEAR.yml` where `YEAR` corresponds to the year of the workshop.


Add to the list in layout

### Add a static HTML website

To serve a standalone HTML website form the Jekyll project, perform the following steps:

- In the `docs/_collections` folder, add an HTML file corresponding to the website you are adding, for instnace `website.html`
- The content of `docs/_collections/website.html` should be:
```
---
permalink: /URL_TO_WEBSITE/:title
---
```
Where `URL_TO_WEBSITE` is the path at which the website is anchored.

- Create a folder `docs/website` where `website` is the name of the HTML representing the collection.
- Dump the content of the website in the folder.
- You are done.

This is useful to serve old COMSOC Workshop websites for instance.

Note that Server Side Includes like `<!--#include file="header.html" -->` are not supported.
If you have a website that uses them, you should first flatten it.

## Development

The website is developped in Jekyll to provide easy integration with the GitHub tools. 
It should be relatively easy for anyone to make some changes even if they are not very
familiar with Jekyll.

All the source files for the website are placed in the `docs` folder (because of GitHub 
Page requirements).

### Layouts

The general layouts of the pages are described in the `_layouts` folder. These layours
define the general structure of every page.

### Pages

All pages are described in markdown files mostly located in the root of the `docs` folder.

They all start with such a header that indicates which layout together with additional
information:

```
---
layout: default
title: This is the Title of the Page
---
```

Note that markdown files can incorporate HTML tags if you need more flexibility on the
display.

### Style

The CSS style sheet is located in the `assets/css` folder.

### Data

Many pages (theses, video seminars, proceedings...) are automatically constructed
based on some data. These data files are located in the `_data` folder. They are
all `.yml` file which syntax can be easily deduced from an example.
