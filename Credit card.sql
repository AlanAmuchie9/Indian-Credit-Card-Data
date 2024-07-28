-- Write a query to retieve all the data to take a proper look at it

SELECT *
FROM dbo.credit_card

-- Write a query to check for duplicate values

SELECT  City, Date, Years, Card_Type, Exp_Type, Gender, Amount, COUNT(*) AS DuplicateCount
FROM 
    credit_card
GROUP BY City, Date, Years, Card_Type, Exp_Type, Gender, Amount
HAVING 
    COUNT(*) > 1
ORDER BY 
    DuplicateCount DESC

-- Check for null values

SELECT *
FROM credit_card
WHERE City is null
      OR date is null
	  OR Card_Type is null
	  OR Exp_Type is null
	  OR Gender is null
	  OR Amount is null
	  OR Years IS NULL

-- Query the data to find the total amount spent per city

SELECT city, card_type, SUM(amount) as Amount_Spent
FROM dbo.credit_card
GROUP BY city, card_type

-- How does the spending vary by card type?

SELECT Card_Type, SUM(CAST(REPLACE(REPLACE(Amount, '£', ''), ',', '') AS DECIMAL(10, 2))) AS Total_Amount
FROM dbo.credit_card
GROUP BY Card_Type
ORDER BY Total_Amount

-- What are the trends in spending over the years? To do this, we have to add a column for year and to do this, we need to alter the table
 
 ALTER TABLE dbo.credit_card
 ADD Years INT

 UPDATE dbo.credit_card
SET Years = YEAR(CONVERT(DATE, Date, 103))

--The years column has been added so we can proceed to check the spending trend over the years

SELECT 
    card_type, 
    Years, 
    SUM(CAST(REPLACE(REPLACE(Amount, '£', ''), ',', '') AS DECIMAL(10, 2))) AS Total_Amount
FROM 
    dbo.credit_card
GROUP BY 
    Card_Type, 
    Years
ORDER BY 
    Years, 
    Card_Type


--What is the average amount spent for each card type?

SELECT 
    card_type, 
    AVG(CAST(REPLACE(REPLACE(Amount, '£', ''), ',', '') AS DECIMAL(10, 2))) AS Average_Amount
FROM 
    dbo.credit_card
GROUP BY 
    Card_Type
ORDER BY 
    Average_Amount DESC



-- What is the average amount spent by each gender

SELECT Gender, AVG(CAST(REPLACE(REPLACE(Amount, '£', ''), ',', '') AS DECIMAL(10, 2))) AS Average_Amount
FROM credit_card
GROUP BY Gender
ORDER BY Average_Amount 


--Top 10 spendings

SELECT TOP 10 *
FROM credit_card
ORDER BY CAST(REPLACE(REPLACE(Amount, '£', ''), ',', '') AS DECIMAL(10, 2)) 

/* We can find how much was spent in a particular city and year. For this query, we will use one example but it can be applied to the rest
*/

SELECT *
FROM credit_card
WHERE City = 'Delhi, India' AND Years = 2014
ORDER BY Date

--Count of transactions for different expense types

SELECT exp_type, COUNT(*) AS Transaction_COUNT
FROM credit_card
GROUP BY exp_type
ORDER BY Transaction_COUNT DESC

--Write a query to find out what each gender spends on a particular expense. you can choose any expense type or all, but here we chose bills

SELECT Gender, exp_type, sum(amount) as amount_spent
FROM credit_card
WHERE Exp_Type = 'bills'
GROUP BY Gender, Exp_Type
ORDER BY amount_spent DESC



