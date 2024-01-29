# comsoc-website
The main website for the ComSoC community

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

### Add a static HTML website

To serve a standalone HTML website form the Jekyll project, perfom the following steps:

- In the `docs/_collections` folder, add an html file corresponding to the website you are adding, for instnace `website.html`
- The content of `docs/_collections/website.html` should be:
```
---
permalink: /URL_TO_WEBSITE/:title
---
```
Where `URL_TO_WEBSITE` represents the path used 
