library(projectutils)
proj <- load_project("2020-05-EYP/")

proj$title$de <- "Anschauliche Aufbereitung von Umfragen zur Teilnehmerstruktur und dem Impact von Veranstaltungen"
proj$title$en <- "Illustrative survey analysis on impact of educational events and participant structure"

# organization
proj$organization$name <- "European Youth Parliament"
proj$organization$website <- "https://eyp.org/"
proj$organization$about$en$source <- "[Source](https://eyp.org/)"
proj$organization$about$de$source <- "[übersetzt von hier](https://eyp.org/)"

proj$end <- "2020-10"
proj$repo$url <- "https://github.com/CorrelAid/eyp-ii"  

proj$links$en <- list() 
proj$links$de <- list() 

# team    
proj$team <- list(
  list(first_name = "Johannes", last_name = "Rabenschlag", github = "jrabensc", linkedin = "https://www.linkedin.com/in/jrabensc"),
  list(first_name = "Alexandra", last_name = "Naumann", twitter = "AlexandraNauman", github = "alexandranaumann"),
  list(first_name = "Aaron", last_name = "Pickering"),
  list(first_name = "Enrica", last_name = "Cherubini")
)

proj$published <- TRUE # set to true always before making a PR.

write_project(proj)
