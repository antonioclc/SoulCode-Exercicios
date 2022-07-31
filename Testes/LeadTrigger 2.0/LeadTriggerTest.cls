@isTest public class LeadTriggerTest {
    @testSetup static void setup() {
        insert new Lead(firstName = 'Novo ', lastName = 'Lead 1', Company = 'Test SA', LeadSource = 'Web', AnnualRevenue = 50001, area_de_interesse__c = 'Naruto');
        insert new Lead(firstName = 'Novo ', lastName = 'Lead 2', Company = 'Test SA', LeadSource = 'Other', AnnualRevenue = 0, area_de_interesse__c = 'Pokemon');
        insert new Lead(firstName = 'Novo ', lastName = 'Lead 3', Company = 'Test SA', AnnualRevenue = 0, area_de_interesse__c = 'Frozen');
    }

    @isTest static void testLeadSource() {
        Lead lead1 = [SELECT Rating FROM Lead WHERE Name = 'Novo Lead 1'];
        System.assertEquals('Warm', lead1.Rating, 'Falha no teste do LeadSource!');
        
        Lead lead2 = [SELECT Rating FROM Lead WHERE Name = 'Novo Lead 2'];
        System.assertEquals('Cold', lead2.Rating, 'Falha no teste do LeadSource!');
    }

    @isTest static void testTask() {
        Lead lead1 = [SELECT Id FROM Lead WHERE Name = 'Novo Lead 1'];
        Task taskLead = [SELECT Subject, Description, whoId FROM Task WHERE whoId =: lead1.Id];
        System.assertEquals('Verificar cadastro!', taskLead.Subject);
        System.assertEquals('Verificar se o cadastro está completo associado ao lead', taskLead.Description);
    }

    @isTest static void testOpp() {
        Lead lead1 = [SELECT Id FROM Lead WHERE Name = 'Novo Lead 1'];
        Lead lead2 = [SELECT Id FROM Lead WHERE Name = 'Novo Lead 2'];
        Lead lead3 = [SELECT Id FROM Lead WHERE Name = 'Novo Lead 3'];

        Test.startTest();
        Lead lead1Editado = new Lead(id = lead1.id, status = 'Closed - Converted');
        Lead lead2Editado = new Lead(id = lead2.id, status = 'Closed - Converted');
        Lead lead3Editado = new Lead(id = lead3.id, status = 'Closed - Converted');
        update lead1Editado;
        update lead2Editado;
        update lead3Editado;
        Test.stopTest();

        Opportunity opp1 = [SELECT Name, Produto__c FROM Opportunity WHERE Lead__c =: lead1Editado.Id];
        Opportunity opp2 = [SELECT Name, Produto__c FROM Opportunity WHERE Lead__c =: lead2Editado.Id];
        Opportunity opp3 = [SELECT Name, Produto__c FROM Opportunity WHERE Lead__c =: lead3Editado.Id];
        
        System.assertEquals('Oportunidade do lead de id: ' + lead1Editado.id, opp1.Name, 'Falha no teste da oportunidade!');
        System.assertEquals('Action Figure de Kurama', opp1.Produto__c, 'Falha no teste da oportunidade!');
        System.assertEquals('Oportunidade do lead de id: ' + lead2Editado.id, opp2.Name, 'Falha no teste da oportunidade!');
        System.assertEquals('Action Figure de Pikachu', opp2.Produto__c, 'Falha no teste da oportunidade!');
        System.assertEquals('Oportunidade do lead de id: ' + lead3Editado.id, opp3.Name, 'Falha no teste da oportunidade!');
        System.assertEquals('Action Figure de Olaff', opp3.Produto__c, 'Falha no teste da oportunidade!');
    }
}