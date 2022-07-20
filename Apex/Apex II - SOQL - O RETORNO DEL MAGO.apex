// Apex II - SOQL - O RETORNO DEL MAGO
MAGO INICIANTE

// 1
// Retorne todas as contas agrupadas pelo tipo de Negócio

SELECT Type FROM Account GROUP BY Type

// 2
// Some os valores de todas as oportunidades que foram perdidas no ultimo mês e agrupe
pelo motivo da perda

SELECT Stagename, Sum(Amount) FROM Opportunity WHERE CloseDate = Last_Month And Stagename = 'Closed lost' GROUP BY Stagename

// 3
// Retorne todos os contatos das contas que possuem contas pai

SELECT Name, (
SELECT Name From Contacts
) FROM Account

// 4
// Retorne o número de registros de contatos da conta "Restaurante Gifara";

SELECT Name, (
SELECT id from Contacts
) FROM Account where Name = 'Restaurante Gifara'

// 5
// Retorne o número de registros de Oportunidades da conta "Restaurante Gifara";

SELECT Name, (
SELECT id from Opportunities
) FROM Account where Name = 'Restaurante Gifara'

// 6
// Selecione todos os usuários que fizeram o login mês passado

SELECT username FROM User where LAstLoginDate = Last_Month

// 7
// Selecione o Id e Nome dos tipos de registro do objeto Despesa e Oportunidade

OBS: Criado objeto chamado "Despesa", e dentro os campos ¨Tipo¨ e relacionamento mestre-detalhe vinculado ao objeto ¨Oportunidade¨

SELECT Name, Type, (
  SELECT Id, Name, Tipo__c FROM Despesas__r
) FROM Opportunity

// 8
// Selecione todos os Leads que possuem o Email igual

OBS: COUNT não funciona com WHERE!!!

SELECT Email, COUNT(Id) FROM Lead GROUP BY Email HAVING COUNT(Id) > 1

// 9
// Selecione todas as contas que começam com Soul e Terminam com Code

SELECT Name FROM Account WHERE Name LIKE 'Soul%' AND Name LIKE '%Code'

// 10
// Selecione todos os casos que são estão abertos mais de 2 semanas

SELECT CaseNumber FROM Case WHERE CreatedDate = LAST_N_DAYS:14

// 11
// Selecione qual são os tipos de caso que são mais abertos durante o mês atual

SELECT Type, COUNT(Id) FROM Case WHERE CreatedDate = THIS_MONTH GROUP BY Type ORDER BY COUNT(Id) DESC

// 12
// Selecione quais são as despesas criadas por empresas que estão inativas

OBS: Criado objeto chamado "Empresa", e dentro o campo ¨Ativa¨ e relacionamento de pesquisa vinculado ao objeto ¨Despesa¨

SELECT Name, (
  SELECT Name, Tipo__c FROM Despesas__r
) FROM Empresa__c WHERE Ativa__c = True

// 13
// O Time de negócios gostaria de saber quais são os clientes que possuem o melhor
faturamento, e quais são os tipos de empresa que possuem.

SELECT Name, AnnualRevenue, Industry FROM Account WHERE AnnualRevenue != null ORDER BY AnnualRevenue DESC

// 14
// Retorne quais contas foram criadas/alteradas por usuários que não são administradores
do Sistema.

SELECT name, CreatedBy.Profile.Name, LastModifiedBy.Profile.name FROM account WHERE CreatedBy.Profile.Name != 'Administrador do sistema' OR LastModifiedBy.Profile.name != 'Administrador do sistema' 

MAGO MÉDIO

// 1
// Imprima no apex o nome e status dos leads com status “working” e os “not
contacted” e que possuam ‘Co’ em qualquer parte do nome.

List<Lead> leads = [SELECT Name, Status FROM Lead WHERE (Status LIKE '%Working%' OR Status LIKE '%Not Contacted%') AND Name LIKE '%Co%' ];
for (Lead lead: leads) {
    System.debug('🎯 Informações do Lead 🎯');
    System.debug('Nome do Lead: ' + lead.Name);
    System.debug('Status do Lead: ' + lead.status + '\n');
}

// 2
// Imprima no apex o nome, cargo e telefone dos contatos que possua United ou Ltd
em qualquer parte do nome da conta.

List<Contact> contacts = [SELECT Name, Title, Phone FROM Contact WHERE Account.Name LIKE '%United%' OR Account.Name LIKE '%Ltd%'];
for (Contact contact: contacts) {
    System.debug('🎯 Informações do Contato 🎯');
    System.debug('Nome do Contato: ' + contact.Name);
    System.debug('Cargo do Contato: ' + contact.Title);
    System.debug('Telefone do Contato: ' + contact.Phone + '\n');
}

MAGO SUPREMO

// 3
// Imprima em apex o nome, phone, rating, data de criação das contas ordenados por
data de criação decrescente, mostrando também o nome e telefone dos contatos
ordenados por nome ligados a cada uma das contas.

List<Account> contas = [SELECT Name, Phone, Rating, CreatedDate, (SELECT Name, Phone FROM Contacts ORDER BY Name) FROM Account ORDER by CreatedDate DESC];
for (Account conta: contas) {
    System.debug('🎯 Informações da Conta 🎯');
    System.debug('Nome da Conta: ' + conta.Name);
    System.debug('Telefone da Conta: ' + conta.Phone);
    System.debug('Classificação da Conta: ' + conta.Rating);
    System.debug('Data de criação da Conta: ' + conta.CreatedDAte + '\n');
    
    if (conta.Contacts.size() > 0) {
        System.debug('📞 Informações dos Contatos da Conta 📞');
        for (Contact contact: conta.Contacts) {
            System.debug('Nome do Contato: ' + contact.Name);
            System.debug('Telefone do Contato: ' + contact.Phone + '\n');
        }
    }
}


