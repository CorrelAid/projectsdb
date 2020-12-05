library(projectutils)
proj <- load_project("2020-05-EYP/")

# organization
proj$organization$name <- "Team Tomorrow"
proj$organization$website <- "https://team-tomorrow.org"
proj$organization$about$en$source <- "translated from [here](https://team-tomorrow.org/wp-content/uploads/2020/03/Satzung-Unsere-Zukunft-e.V..pdf)
and [here](https://team-tomorrow.org/verein/)"
proj$organization$about$de$source <- "[Selbstdarstellung](https://team-tomorrow.org/wp-content/uploads/2020/03/Satzung-Unsere-Zukunft-e.V..pdf) und [Website](https://team-tomorrow.org/verein/) von Team Tomorrow"

proj$end <- "2020-07"
proj$repo$url <- "https://github.com/CorrelAid/komunat"
proj$links$en <- list("[Podcast episode (in German)](https://soundcloud.com/correlaid_podcast/about-correlaid-data-science-fur-die-wahlentscheidungshilfe-komunat)") 
proj$links$de <- list("[Podcast Episode](https://soundcloud.com/correlaid_podcast/about-correlaid-data-science-fur-die-wahlentscheidungshilfe-komunat)") 


# team
proj$team <- list(
  list(first_name = "Andreas", last_name = "Neumann"), 
  list(first_name = "Aylin", last_name = "Kallmayer", twitter = "AylinKallmayer")
)

proj$published <- TRUE # set to true always before making a PR.

write_project(proj)
