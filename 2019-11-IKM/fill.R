library(projectutils)
proj <- load_project("2019-11-IKM/")

# organization
proj$organization$name <- "Berliner Beratungsnetz für Zugewanderte"
proj$organization$website <- "https://www.beratungsnetz-migration.de/"
proj$organization$about$en$source <- ""
proj$organization$about$de$source <- ""

# title and other meta data
proj$end <- "2020-10"
proj$title <- list(
  en = "",
  de = ""
)
proj$repo$url <- "https://github.com/CorrelAid/ikmo"

# other links related to the project (podcast episodes, publicly accessible outputs, ...)
proj$links$en <- list() 
proj$links$de <- list() 


# team
# show all available fields
names(proj$team[[1]])

proj$team <- list(
  list(first_name = "Long", last_name = "Nguyen", github = "long39ng"),
  list(first_name = "Enrico", last_name = "Lauckner", github = "elauckne"),
  list(first_name = "Sam", last_name = "Siewers"),
  list(first_name = "Natalie", last_name = "Sablowski")
)

proj$published <- TRUE # set to true always before making a PR.

write_project(proj)