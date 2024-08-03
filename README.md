# Indian-Credit-Card-Data
An analysis of the credit card usage in india using SQL  
## Introduction
This data analysis project helps to give insight into the use of credit cards in various Indian cities. By analysing this data set, we hope to identify trends, make sale and profit driven recommendation

### Problem Statement
The first step is to define the problem. The questions I and the company are trying to answer are:
1.	How does spending vary by card type?
2.	What are the trends in spending amount over the years
3.	What is the average amount spent by each gender
4.	What are the cities with the top 10 spendings
5.	How much does each gender spend on different expense types
6.	How much was spent in particular cities with the corresponding year

### Data Sourcing
In this project, the dataset used is gotten from Kaggle. It has only one table that contains 26,052 rows and 8 columns

### Tools
 - Excel
 - Microsoft SQL Server

### Data Importation
The dataset was downloaded in CSV format and was analysed using Microsoft SQL Server. After importation, the data needs to be be processed and cleaned to get accurate results because using messy, dirty data leads to inaccurate insights.

### Data Transformation and Cleaning
The data was cleaned in Microsoft Excel by checking for duplicates, blank rows, wrong spellings, outliers

### Data Analysis
The first question this analysis aims to solve is 'How does spending vary by card type'. The amount spent by card type can be an indication of the popularity of the card type. Further research into the company can give us insight on what makes it popular or not so popular as the case may be. It was discovered that the silver card has the most amount spent on it, and on further inspection, it was discovered that it has more users. therefore, more users leads to more money spent with it.
![image](https://github.com/user-attachments/assets/066e27c8-3e98-4270-8ed4-ed6016500044)
The SUM in the query can be replaced with AVG to find the average spending per card type

The second question, 'What are the trends in spending over the years' aims to understand the changes in spending habits of users. This can be as a result of economic factors like inflation or economic growth. The highest amount was spent in 2014, then 2015 and the least was spent in 2013. Research could be carried out to get a picture of the economic situation of India in each particular year
![image](https://github.com/user-attachments/assets/929c8c24-2a68-4f5e-963e-4981c174d4e3)
A new column for the years didn't have to be added, but I added it for better understanding of the data set

The third question, 'What is the relationship between gender and amount spent' answers the question of which particular gender spends more. Knowledge of spending by gender could be used by companies to create targeted ads and promos to a specific gender. 
![image](https://github.com/user-attachments/assets/a184c736-426f-435d-9a41-96df9a0c7cb5)

The fourth question, 'What cities have the top 10 spendings' helps us understand the places where people tend to spend more electronically. These are the top 10 cities where eletronic spending via card is most popular. Cities like this tend to be more developed and have more infrastructure, so corporations can focus their resources here to grow their business
![image](https://github.com/user-attachments/assets/eec68d01-1ce0-4b58-9cd8-6a9cfbf68e6e)

Knowing how much each gender spends on a particular expense can help companies tailor their marketing strategies and product offerings based on the spending habits of each gender. In this query, we made an inquiry into how much each gender spends on bills and it was discovered that females spent more
![image](https://github.com/user-attachments/assets/1383f526-0ea4-439c-822a-86df533f6621)

'How much waas spent in particular cities with the corresponding year' helps us understand the economic situation and spending habits of the people of a particular in a given year
![image](https://github.com/user-attachments/assets/1abf8465-f98a-45be-b06c-69b03ba7f0a7)

### Key Insights
 -- 2014 had the most money spent
 -- The silver card type is the most popular






    
