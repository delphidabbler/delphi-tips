# Delphi Tips

This is a bunch of Delphi language tips migrated from the old version of the [delphidabbler.com](https://delphidabbler.com/) website, plus some others.

The main reason for this repo was to ensure the survival of the tips beyond the June 2020 closure of the old delphidabbler.com web site. The site was subsequently rescued and moved to a new server but the tips have not been restored and remain in this repo and its associated [website](https://delphidabbler.github.io/delphi-tips/).

> **Health Warning!** All the tips are very old now. Very few have been tested, and those that have were tested quite some time back on an old version of Delphi. Consider yourself warned!

There are the following folders:

## `db`

Contains a pair of SQL files - `tips.sql` and `tips-v2.sql` - that provide meta data about the tips. The SQL can be used to create a database.

These files contain two versions of the database. They both have the same content except that `tips-v2.sql` has had two columns removed that contain email addresses in `tips.sql`.

Such a database could can be used with the content of the `docs/_tips` folder and some suitable CSS and HTML templates to generate complete web pages for each tip.

## `demos`

Contains Delphi Pascal demo projects associated with some of the tips in the `docs/_tips` directory.

Each demo has its own sub-directory whose name is the number of the associated tip. Where there is more than one demo for a single tip there are further sub-directories for each demo.

> **Warning:** Tips `.html` files in `docs/_tips` link to the associated demo directory. If this directory, or any of its sub-directories, are renamed or moved then links in the affected `.html` files must be updated accordingly.

## `docs`

This folder contains the source code of a **[mini website](https://delphidabbler.github.io/delphi-tips/)** that displays the tips that were previously on [delphidabbler.com](https://delphidabbler.com/).

The site is developed and deployed using Jekyll. Builds are published as a GitHub Pages website.

> **Note:** The tips in this folder were derived from those in the `tips` folder, but have since been updated. These tips are the most current.

## `extra`

There are two open document format documents in this directory.

* One contains a large number of tips downloaded from the former _Delphi Pool_ website.
* The second contains tips collected online by _"topellina"_.

There may be some duplication of tips between the PDF files and these documents. Conversely, some tips that appear in the `docs/_tips` and `tips` directories may have been sourced,  and later deleted, from these files.

## `tips`

Contains a PDF "print out" of each of old the DelphiDabbler.com tips pages.

> **Note:** The tips in the `docs/_tips` directory represent the most recent version if the collection. These PDF versions are now **deprecated** and may be removed at some point.
