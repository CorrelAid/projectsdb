CorrelAid was able to help the Weltladen Umbrella Association team by automating the manual and therefore error-prone and very time-consuming creation of the individual reports. For the automation, the freely accessible statistics software R and implicitly the text typesetting system Latex (to create tables within the reports) were used.

In addition, suggestions for the optimization of the questionnaires were developed and implemented over the course of the project. 

In order to ensure a long-term effect of the project, care was taken to enable the Weltladen Umbrella Association's team to carry out the report creation process themselves in the future. 
To this end, the scripts developed by CorrelAid were discussed in detail and in person with staff from the Weltladen Assocation and their implementation was tested extensively. In addition, the code was meaningfully commented. The project team was also available to answer questions, an offer which the Weltladen Umbrella Association has repeatedly made use of. The implementation on the local machine of the Weltladen staff is now running smoothly.


### Technical solution approach
The data were read in and wrangled with R (data quality control, aggregation, creation of new variables). Descriptive evaluations were carried out for all shops as well as for the individual shops and their respective peer groups. The results were needed for the individualized reports which were generated with Rmarkdown. Tables in the reports were created with the R package kableExtra, the graphics with ggplot2. The whole process can now be started for all participating Weltladen shops and runs automatically.

