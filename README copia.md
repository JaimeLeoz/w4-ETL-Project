# Project: ETL

![portada](https://www.informatica.com/content/dam/informatica-com/en/images/misc/etl-process-explained-diagram.png)


## Overview

My week proyect is about finding out if Airbnb renting does affect real renting prices by square meters in a historical data.

The focus is in the touristic area of Mallorca, Spain. To be able to start digging in a smaller dataframe.

The idea behind is to be able in the future to find a correlation -that might be for later porpoise - since Mallorca is breaking records each year.
The population of Mallorca is worried about the increase of tourism in specific months form June to August. Since affects their normal day a day in the island.

Is important to understand that this analysis is not meant to criticize tourism or either Airbnb, is meant for playing around with data and reach a neutral conclusion.

I might not arrive to the final conclusion since is extensive analysis for a weekend.

## Coclusions I reached so far!
- Q1 

![ERDD schema](./Pictures_SQL_PPT/))
---

## Technical Requirements - which I also followed for the proyect:
- A) Grab DataSources that have enought data regarding Airbnb and the renting prices in the last years
  - I reached a good source for Airbnb: http://insideairbnb.com/get-the-data
  - Fought my way through scrapping data for the renting prices in all the districts of Mallorca : https://realadvisor.es/es/precios-viviendas/provincia-baleares
  - Found a way for this data to be connected in SQL with primary and foreing keys using the *Postal codes of each district * from wikipedia

- B) This proyect is meant to force us to use DB, APIS or Scrapping ourways to the data from 3 different sources, whichever most convinient
- C) Is also meant for us to do all work from previous weeks
  - Analyzing the Data
  - Cleaning the Data ( dups, strings, types, nulls, n/a etc)
  - finding Outliers
  - Putting together the data and do some calculations with new columns if needed
  - Upload to SQL and dig around with Queries to find the answers ( join, groupby, etc)

## Biggest achivements

- A) I been quite impress by how I managed to jump over new issues, errors etc. I was able to solve all of them and understand the errors.
- B) I managed to do some precious loops in order to keep all district names homogeneous - gigantic next time will focus on writting functions.
  - There were different issues with distric names, like spanish version, catalonian version and accents
  - I had to keep them equal in all the three different tables in order to do proper analysis
- C) Managed to include the postal codes in the airbnb table for each specific district
- D) Managed to upload to SQL, ERD and do some cool Queries to find some answers


## Biggest F*ups

 - A) Find out some nulls, they avoided me, also affected the first SQL Workbench upload
 - B) Forgot to look for Outliers, too much time worried for knowing if i was going to be able to do all steps with my okeish python skills, time is cruel
 - C) Loosing my weekend sitting down, i hope to get a good job. At least I Had fun and prove myself i could manage all alone!!!

## Some cool results





* [Python Functional Programming How To Documentation](https://docs.python.org/3.7/howto/functional.html)
* [Python List Comprehensions Documentation](https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions)
* [Python Errors and Exceptions Documentation](https://docs.python.org/3/tutorial/errors.html)
* [StackOverflow String Operation Questions](https://stackoverflow.com/questions/tagged/string+python)
