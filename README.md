# Delphi Tips

This is a bunch of Delphi language tips migrated from the old version of the [delphidabbler.com](https://delphidabbler.com/) website, plus some others.

The main reason for this repo was to ensure the survival of the tips beyond the June 2020 closure of the old delphidabbler.com web site. The site was subsequently rescued and moved to a new server but the tips have not been restored and remain in this repo and associated website.

> **Health Warning!** All the tips are very old now. Very few have been tested, and those that have were tested quite some time back on a old version of Delphi. Consider yourself warned!

There are the following folders:

## `db`

Contains a pair of SQL files - `tips.sql` and `tips-v2.sql` - that provide meta data about the tips. The SQL can be used to create a database.

These files contain two versions of the database. They both have the same content except that `tips-v2.sql` has had two columns removed that contain email addresses in `tips.sql`.

Such a database could can be used with the content of the `docs/_tips` folder and some suitable CSS and HTML templates to generate complete web pages for each tip.

## `docs`

This folder contains the source code of a **[mini website](https://delphidabbler.github.io/delphi-tips/)** that displays the tips that were previously on [delphidabbler.com](https://delphidabbler.com/).

The site is developed and deployed using Jekyll. Builds are published as a GitHub Pages website.

## `extra`

There are two open document format documents.

* One contains a large number of tips downloaded from the former _Delphi Pool_ website.
* The second contains tips collected online by _"topellina"_.

There may be some duplication of tips between the PDF files and these documents. Conversely, some tips that appear in the PDFs may have been sourced and deleted from these files.

## `tips`

Contains a PDF "print out" of each of old the DelphiDabbler.com tips page.
