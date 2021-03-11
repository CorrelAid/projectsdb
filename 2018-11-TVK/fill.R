library(projectutils)
proj <- load_project("2018-11-TVK/")

proj$title$de <- "Mitgliederbefragung des Turnvereins Käfertal"
proj$title$en <- "Member survey of Turnverein Käfertal (gymnastics club)"

# organization
proj$organization$name <- "Turnverein Käfertal"
proj$organization$website <- "https://www.tv-kaefertal.de/"
proj$organization$about$en$source <- "[Quelle](https://www.tv-kaefertal.de/index.php/kontakte)"
proj$organization$about$de$source <- "[Source](https://www.tv-kaefertal.de/index.php/kontakte)"

proj$end <- ""         # To Do
proj$repo$url <- ""    # To Do

proj$links$en <- list() 
proj$links$de <- list() 

# team    
proj$team <- list(
  list(first_name = "Polina", last_name = "Mosolova", linkedin = "https://www.linkedin.com/in/polina-mosolova/"),
  list(first_name = "Alexander", last_name = "Sauer"),
  list(first_name = "Yvy", last_name = "Truong", github = "YvyTr"),
  list(first_name = "Manuel", last_name = "Neumann", linkedin = "https://www.linkedin.com/in/manuel-neumann/", github = "ManuelNeumann", twitter = "powi_manu", instagram = "https://instagram.com/powi_manu")
)                                                                  

proj$published <- FALSE # set to true always before making a PR.

write_project(proj)
