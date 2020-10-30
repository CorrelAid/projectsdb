To automate erlassjahr's data and visualization processes as well as to implement a user-friendly and interactive way to engage with their annual research results, our solution consists of two major steps:
​
1. The (partial) automation of data generation and data processing
2. The development and implementation of an [interactive world map](https://erlassjahr.de/informieren/karte-ueberschuldete-staaten-weltweit/) that automatically uses the most recent data available.

​
We used R to program and implement all steps and processes. The world map is based on leaflet - a java-based open-source library for interactive world maps. We use shiny for the interface of the web application for the world map.
​
### 1. The (partial) automation of data generation and data processing
​
The first step to support the data generation and data processing of erlassjahr is to automate as many steps as possible before starting individual research on different cases. For this purpose, we wrote a script that with each new year automatically transfers all information that remains static from the previous report into a new excel sheet. Examples of this static information are, for instance, the geographic region of each state or the link to each state's country profile on erlassjahr.de. Additionally, we automatically load and include all existing information on the states' debt situation from the website of the World Bank. As a result, a large part of the required information for a given year is already present at the very start of a new year, and only the information that is missing need to be researched and collected individually.


It is important to point out that not all data could be collected automatically given that it oftentimes requires intensive research and the use of many different resources to collect all information that is needed for specific cases. Once the excel sheet is filled with this information, however, a second script can be executed that automatically calculates different indicators and categories. That is, it uses the raw data from the excel sheet and categorizes countries based on different thresholds, for instance, into a higher or lower debt category.
​
### 2. The development and implementation of an interactive world map
​
Based on this data source, the second step automatically renders an [interactive world map](https://erlassjahr.de/informieren/karte-ueberschuldete-staaten-weltweit/) that includes the most recent information on the debt situation of countries and publishes it on the website of erlassjahr. Even in case that the debt situation changes, the team of erlassjahr can update the data source and re-render the world map to always have the latest changes in the debt situation represented online.

​
In contrast to the static PDF version of the world, the web-based interactive world map allows users to explore the debt situation of countries more detailed and efficient. For instance, it is now possible to focus only on specific debt indicators as compared to an aggregate of states' total debt situation. Moreover, countries can now be filtered for specific geographic regions, income situations or risk factors. Furthermore, hovering over countries on the map displays further information such as the exact amount of debt a country has. Clicking on a country takes the user directly to the dedicated country profile on erlassjahr.de where the user receives even more detailed information on the overall history and situation of a country. Finally, the current map view can be downloaded so that all information and filter can be saved to users' personal needs and interests.
​

The new workflow for erlassjahr is now as follows. Instead of manually extracting all information in an excel sheet and coloring the map by hand using Adobe Indesign, the team only needs to specify the year for their annual report and execute the first script to automatically receive a pre-populated excel sheet with a lot of information readily available when they start working on their new report. Once the missing information is added, they execute a second script that calculates further variables and categorizes countries depending on their debt situation. A final click to execute the last script uses the most recent data available to create and publish the interactive world map on the website of erlassjahr. All steps are carefully described and the organization received both a workshop on how to use their new workflow set up and a detailed guide on how the different steps work.
​