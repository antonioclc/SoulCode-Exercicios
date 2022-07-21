// Apex I - ATIVIDADE I - SOQL
// 1
SELECT Name, Company, Phone FROM Lead
// 2
SELECT Company, LeadSource, Status, Email FROM Lead
// 3
SELECT Name, Amount, LeadSource, StageName FROM Opportunity 
// 4
SELECT OrderNumber__c, Name, LeadSource, Amount, StageName, Probability FROM Opportunity 
// 5
SELECT Company, Name, CNPJ__c, Address, Phone, LeadSource, AnnualRevenue, Email, Status FROM Lead 
// 6
OBS: Conta não possui CNPJ
SELECT Name, OperatingHoursId, Industry, Phone, Fax, Type FROM Account
// 7
SELECT Company, LeadSource, Status FROM Lead WHERE Company LIKE 'A%'
// 8
SELECT Name, Amount, StageName FROM Opportunity WHERE Amount >= 400000
// 9
SELECT Name, Amount, StageName, ExpectedRevenue FROM Opportunity WHERE ExpectedRevenue > 10000 AND ExpectedRevenue < 20000
// 10
SELECT Name, Title, Phone, Email FROM Contact WHERE Name LIKE 'B%' OR Name LIKE '%S'
// 11
SELECT Id, Name, Email FROM Contact WHERE Email LIKE '%uog%' OR Email LIKE '%uoa%'
// 12
SELECT Name, COUNT(id) FROM Opportunity GROUP BY Name 
// 13
SELECT Name, Phone, Type FROM Account WHERE Type LIKE 'Customer - Direct' ORDER BY Name DESC
// 14
SELECT Name, Rating, AnnualRevenue FROM Account WHERE Rating = 'Hot' AND AnnualRevenue > 200000 ORDER BY AnnualRevenue
// 15
SELECT Id, Name, NumberOfEmployees FROM Account WHERE NumberOfEmployees > 1000
// 16
SELECT Name, Industry, AnnualRevenue FROM Account WHERE Rating LIKE 'Warm' OR (AnnualRevenue >= 200000 AND AnnualRevenue <=600000)
