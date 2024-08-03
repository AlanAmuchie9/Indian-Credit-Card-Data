# Indian-Credit-Card-Data
An analysis of the credit card usage in india using SQL  
## Introduction
This data analysis project helps to give insight into the use of credit cards in various Indian cities. By analysing various trends, we hope to identify trends, make sale and profit driven recommendation

### Problem Statement
The first step is to define the problem. The questions I and the company are trying to answer are:
1.	How does spending vary by card type?
2.	What are the trends in spending amount over the years
3.	What is the average amount spent by each gender
4.	What is the frequency of use in the top 3 cities
5.	What are the cities with the top 10 spendings
6.	How much does each gender spend on different expense types
7.	 How much was spent in particular cities with the corresponding year

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



    
