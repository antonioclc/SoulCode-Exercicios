// Apex I - ATIVIDADE II - SOQL
// 1
SELECT Type, COUNT(Name) FROM Account GROUP BY Type 

// 2
SELECT Name, Title, Phone, Account.Name FROM Contact WHERE Title = 'CEO'

// 3
SELECT Amount, StageName, Account.Name, Account.Phone FROM Opportunity WHERE Account.Name LIKE '%Oil%'

// 4
SELECT Name, Phone, Title, Account.Name, Account.Rating FROM Contact WHERE Account.Rating = 'Hot'

// 5
SELECT Name, Rating, AnnualRevenue, (
SELECT Name FROM Opportunities WHERE Amount >= 10000 AND Amount <= 50000
) FROM Account WHERE Rating != 'Hot'

// 6
SELECT Name, (
SELECT Name FROM Contacts WHERE Name LIKE 'B%' OR Name LIKE 'A%'
) FROM Account WHERE Name LIKE 'Oil%' OR Name LIKE 'Ed%'