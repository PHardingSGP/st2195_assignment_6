# st2195_assignment_6
UoL Data Science PFDS assignment 6
1
Practice Assignment 06
Download the ECB speeches dataset and the daily EUR/USD reference exchange rate from the ECB Statistical Data Warehouse. Next, save them as “speeches.csv” and “fx.csv”. For the speeches.csv, please keep only the “date” and “contents” columns.
Create a GitHub repository called “st2195_assignment_6” and include two scripts (one in Python and one in R) to perform the operations described below, and a README.md file.
1.
Load and merge the datasets keeping all information available for the dates in which there is a measurement in “fx.csv”. [1 point]
2.
Remove entries with obvious outliers or mistakes, if any. [1.5 points]
3.
Handle missing observations for the exchange rate, if any. This should be done replacing any missing exchange rate with the latest information available. Whenever this cannot be done, the relevant entry should be removed entirely from the dataset. [1.5 points]
4.
Calculate the exchange rate return. Extend the original dataset with the following variables: “good_news” (equal to 1 when the exchange rate return is larger than 0.5 percent, 0 otherwise) and “bad_news” (equal to 1 when the exchange rate return is lower than -0.5 percent, 0 otherwise). [1.5 points]
5.
Remove the entries for which contents column has NA values. Generate and store in csv the following tables [1.5 points each]:
a.
“good_indicators” – with the 20 most common words (excluding articles, prepositions and similar connectors) associated with entries wherein “good_news” is equal to 1;
b.
“bad_indicators” – with the 20 most common words (excluding articles, prepositions and similar connectors) associated with entries wherein “bad_news” is equal to 1;
Any observation from the common words found above?
Note that the original data should not be included in the GitHub repository, but only appropriately described and linked in the readme file.
2
Additional Notes:
•
Challenging practice assignment
o
Do some research
o
Use the help functions, and search the documentation
•
Download datasets
o
“speeches.csv” – Go to the given link (ECB speeches dataset) and download the speeches file from there. Rename file as “speeches.csv”.
o
“fx.csv” – Go to the given link (ECB Statistical Data Warehouse) and search for USD/EUR daily rates
▪
Alternatively, you can also use the link below, click on the icon to “Download Chart and Table Data” and select “CSV” format – https://data.ecb.europa.eu/data/datasets/EXR/EXR.D.USD.EUR.SP00.A
▪
Download the file and rename as “fx.csv”. File contains daily exchange rates on amount of US dollars (USD) that one Euro (EUR) can be exchanged for.
•
Download list of stop words; one version can be found at this link -- https://countwordsfree.com/stopwords. Click on “Txt” to download the text file.
o
You may also use any other source of stop words
•
Hints
o
Load and merge datasets
▪
Load “fx.csv” – Check the data
▪
Load “speeches.csv” – Transform this into just one row of content for each date (i.e., group contents by date and join all contents per date as one row)
▪
Merge the fx and speeches data into one
▪
Note: If needed, convert data types
o
Remove entries with obvious outliers or mistakes
▪
You may want to do a visual plot, and check the information/ structure/ summary
▪
For plotting, you can use plot() function in R, and the pandas dataframe plot() method in Python
3
o
Handle missing observations for the exchange rate
▪
Any missing data? Should we remove them?
▪
How can we replace or fill them with appropriate data?
▪
To replace/fill missing data, you can explore tidyr and zoo packages for R, and pandas library for Python
o
Calculate exchange rate return
▪
R – You can explore the diff() function. Alternatively, you can use a loop to compute daily exchange rate returns
▪
Python – You can use pandas functions, e.g, pct_change(), diff(), shift(), etc. Alternatively, you can use a loop to compute daily exchange rate returns
o
Extend the original dataset with “good_news” and “bad_news” variables
o
Associate words with "good_news" and "bad_news", and output the top 20 for each category
▪
Gather all the contents related to "good_news" and "bad_news". You may concatenate all "good news" contents into one long string 'good_news_content' (do the same for “bad news”)
▪
Write a function to get the most common words (excluding stop_words) related to good_news and bad_news. You will need a word counter that stores the results
▪
You may use suitable libraries if needed
o
Useful Libraries/Packages
▪
R – dplyr, tidyr, zoo (for filling missing values), text2vec (for text analysis and NLP)
▪
Python – pandas, string
•
Additional References
o
9 functions that make natural language pre-processing a piece of cake | by Alejandra Vlerick | Towards Data Science
o
https://www.w3resource.com/python-exercises/string/python-data-type-string-exercise-12.php
