// Apex I - ATIVIDADE III - SOQL
// 1
SELECT Name, Amount, CloseDate FROM Opportunity

// 2
SELECT Name, Amount FROM Opportunity WHERE CloseDate > 2021-06-01

// 3
SELECT Name, Amount, Description, NextStep FROM Opportunity WHERE StageName = 'Closed Won' AND Amount > 100000

// 4
SELECT Name, Rating, Type, YearStarted FROM Account WHERE Name LIKE 'Uni%'

// 5
SELECT Name, Company, Email FROM Lead WHERE Email LIKE '%.net' AND Status = 'Working - Contacted'

// 6
SELECT Name, COUNT(Id) FROM Opportunity GROUP BY Name

// 7
SELECT Name, COUNT(Id) FROM Opportunity GROUP BY Name HAVING COUNT(Id) = 3

// 8
SELECT Name, Amount, StageName, NextStep, Description FROM Opportunity WHERE Name LIKE '%Oil%' OR Name LIKE '%Gene%'

// 9
SELECT Name, FORMAT(Amount), StageName, Criacao_da_empresa__c, CloseDate FROM Opportunity WHERE StageName = 'Closed Won' AND Amount < 80000 ORDER BY Amount DESC

// 10
SELECT Name, Phone, (
 SELECT Name, Amount, StageName FROM Opportunities 
) FROM Account

// 11
SELECT Name, (
  SELECT Name, Amount FROM Opportunities 
), (
  SELECT Name FROM Contacts WHERE Name LIKE 'A%'
) FROM Account ORDER BY Name ASC

// 12
SELECT Name, StageName, NextStep, Amount FROM Opportunity WHERE Amount < 100000 AND (CloseDate >= 2022-04-01 AND CloseDate <= 2022-06-30)

// Exercício Extra

List<Lead> leads = [SELECT Name, Company, State, Email FROM Lead WHERE State = 'CA' OR State = 'VA' ORDER BY Name DESC];

for(Lead lead : leads){
    System.debug('Informações do Lead');
    System.debug('Nome: ' + lead.Name);
    System.debug('Empresa: ' + lead.Company);
    System.debug('Endereço: ' + lead.State);
    System.debug('Email: ' + lead.Email + '\n');
}
