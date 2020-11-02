projectsdb
================

[![License:
DbCL](https://img.shields.io/badge/DbCL-Database%20Content%20License-informational)](http://opendatacommons.org/licenses/dbcl/1.0/)
[![License:
ODbL](https://img.shields.io/badge/ODbL-Open%20Database%20License-blue)](http://opendatacommons.org/licenses/odbl/1.0/)

This repository contains the temporary “database” of CorrelAid projects
for which a [thorough
follow-up](https://docs.correlaid.org/project-manual/project-team/what-you-do#follow-up)
was done. The data in this repository is used to present the projects
[on our website](https://correlaid.org/projects). More specifically, the
website pulls data from `projects.json`.

# Important concepts

## Project ID

Each CorrelAid project has a project ID. It has three components:

  - **Three-letter, uppercase** identifier for the organization. Usually
    the first three letters of the organization’s name, unless it has a
    three-letter acronym (e.g in the case of the European Youth
    Parliament, we use EYP)
  - Year in which the project started.
  - Month in which the project started.

There are *two versions* of the project id: -
{identifier}-{month}-{year}: this version is used in surveymonkey
questionnaries - {year}-{month}-{identifier}: this version is used in
the CorrelCloud and on GitHub because sorting by year is more
meaningful.

# Utility R Package

An utility R package `{projectutils}` :package: is available [on
GitHub](https://github.com/CorrelAid/projectutils).

Install it with the `{devtools}` :package:

``` r
devtools::install_github("CorrelAid/projectutils")
```

or with the `{remotes}` :package:

``` r
remotes::install_github("CorrelAid/projectutils")
```

# How to contribute

Are you part of a project team and currently working on the follow up
for your project? Great\!

## Create a branch

Clone the repository if you have not already. On your machine, create a
branch for your project with its ID as branch name, e.g. on the command
line:

``` bash
git checkout -b FOO-10-2020
```

## Create new project folder

### with `{projectutils}` :package:

``` r
library(projectutils)
new_project(prefix = "FOO", year = 2020, month = 10)
```

    ## ℹ processing FOO 2020 10

    ## ✓ created meta.json at /Users/frie/dev/correlaid/projects/projectsdb//2020-10-FOO/meta.json.

    ## ✓ created 00_about.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/de/00_about.md

    ## ✓ created 00_summary.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/de/00_summary.md

    ## ✓ created 01_problem.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/de/01_problem.md

    ## ✓ created 02_data.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/de/02_data.md

    ## ✓ created 03_approach.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/de/03_approach.md

    ## ✓ created 04_impact.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/de/04_impact.md

    ## ✓ created 00_about.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/en/00_about.md

    ## ✓ created 00_summary.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/en/00_summary.md

    ## ✓ created 01_problem.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/en/01_problem.md

    ## ✓ created 02_data.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/en/02_data.md

    ## ✓ created 03_approach.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/en/03_approach.md

    ## ✓ created 04_impact.md at /Users/frie/dev/correlaid/projects/projectsdb/data/2020-10-FOO/en/04_impact.md

This will create a folder `2020-10-FOO` with all the files that need to
be filled out.

### Without `{projectutils}`

Copy the example folder `0000-00-EXA` and rename it so that it reflects
your project ID.

## Edit the files

Creating / copying the folder will give you the following folder
scaffold for your project:

``` r
fs::dir_tree("2020-10-FOO")
```

    ## 2020-10-FOO
    ## ├── de
    ## │   ├── 00_about.md
    ## │   ├── 00_summary.md
    ## │   ├── 01_problem.md
    ## │   ├── 02_data.md
    ## │   ├── 03_approach.md
    ## │   └── 04_impact.md
    ## ├── en
    ## │   ├── 00_about.md
    ## │   ├── 00_summary.md
    ## │   ├── 01_problem.md
    ## │   ├── 02_data.md
    ## │   ├── 03_approach.md
    ## │   └── 04_impact.md
    ## └── meta.json

As mentioned in the
[template](https://pad.correlaid.org/lTV3NzFNRxGK3wrcSYIk4Q), you only
have to create content in either German or English Fill in the files
that correspond to the four main sections of the template into
`01_problem.md` until `04_impact.md`. In addition, there are two files:

  - `00_about.md`: here you should fill in the description of the
    organization. You can copy this from their website (in this case,
    please specify the source in `meta.json`).
  - `00_summary.md`: this is a three-sentence summary of the project.

The final file is `meta.json`. It is a json file where you can add
various meta information about the project. If the descriptions in the
json are not sufficient to understand what is required, please ask Frie.

### `{projectutils}` helpers

You can use R and `{projectutils}` to help you with the editing process
of `meta.json`.

You can load a project:

``` r
proj <- load_project("2020-10-FOO")
```

    ## ✓ loaded data from /2020-10-FOO

You can then use typical list operations such as:

``` r
proj$end <- "2010-10"
proj$repo$public <- TRUE # if the project repository is public 
proj$links$en <- list() # no links in english 
proj$links$de <- list("Deutschsprachig CorrelAid [here](https://correlaid.org)") 
proj$team <- list(
  list(first_name = "Alex", last_name = "Test", github = "data4gooder"), 
  list(first_name = "Rock", last_name = "Stone", twitter = "twitterer", website = "https://mywebsite.com")
  )
proj$published <- TRUE # set to true always before making a PR.
```

For *top-level* fields, there is also `update_project` (experimental):

``` r
proj <- update_project(proj, "start", "2020-04")
```

Once you are finished with editing your project in R, update `meta.json`
by:

``` r
write_project(proj)
```

    ## ✓ saved to /2020-10-FOO/meta.json

## Push and PR

Collaborate with your project team mates on the branch. Once you are
ready, open a PR.

# Misc: Load and update all projects

To load all projects in R:

``` r
all_projects <- load_projects()
```

    ## ✓ loaded data from /0000-00-EXA

    ## ✓ loaded data from /2019-06-WEL

    ## ✓ loaded data from /2020-03-DEN

    ## ✓ loaded data from /2020-03-ERL

This loads all projects and then updates `projects.json` which contains
all projects.

``` r
library(magrittr)
update_projects_json()
```

    ## ✓ loaded data from /0000-00-EXA

    ## ✓ loaded data from /2019-06-WEL

    ## ✓ loaded data from /2020-03-DEN

    ## ✓ loaded data from /2020-03-ERL

    ## ✓ updated projects.json
