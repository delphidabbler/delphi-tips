# Delphi Tips

This is a bunch of Delphi language tips migrated from the old version of the [delphidabbler.com](https://delphidabbler.com/) website, plus some others.

> The main reason for this repo was to ensure the survival of the tips beyond the June 2020 closure of the old delphidabbler.com web site.
>
> Unexpectedly the site has been rescued and moved to a new server but, as at late June 2020, the tips have not been restored. Consequently, this repo is still required.

There are the following folders:

## `db`

Contains a single SQL file that provides meta data about the tips. The SQL can be used to create a database.

Such a database could can be used with the content of the `docs/_tips` folder and some suitable CSS and HTML templates to generate complete web pages for each tip.

## `docs`

This folder contains the source code of a **[mini website](https://delphidabbler.github.io/delphi-tips/)** that displays the tips that were previously on [delphidabbler.com](https://delphidabbler.com/).

The site is developed and deployed using Jekyll. Builds are stored in the `_site` directory and are published as a GitHub Pages website.

## `extra`

There are two open document format documents.

* One contains a large number of tips downloaded from the former _Delphi Pool_ website.
* The second contains tips collected online by _"topellina"_.

There may be some duplication of tips between the PDF files and these documents. Conversely, some tips that appear in the PDFs may have been sourced and deleted from these files.

## `tips`

Contains a PDF "print out" of each of old the DelphiDabbler.com tips page.

----

> Bear in mind that all the tips are old now. Very few of the tips in the `tips` or `docs/_tips` folders and none of those in the `extra` folder have been tested. **Use with care and at your own risk!**
