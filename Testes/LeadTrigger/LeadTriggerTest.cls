@isTest
public class LeadTriggerTest {
    @isTest
    public static void testLeadSource() {
        Lead novoLead = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        LeadSource = 'Web'
        );
        insert novoLead;
        Lead leadInserido = [SELECT Rating FROM Lead WHERE Id =: novoLead.id];
        System.assertEquals('Warm', leadInserido.Rating, 'Falha no teste do LeadSource!');
        
        Lead novoLead2 = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        LeadSource = 'Other'
        );
        insert novoLead2;
        Lead leadInserido2 = [SELECT Rating FROM Lead WHERE Id =: novoLead2.id];
        System.assertEquals('Cold', leadInserido2.Rating, 'Falha no teste do LeadSource!');
    }
    @isTest
    public static void testTask() {
        Lead novoLead = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        AnnualRevenue = 50001
        );
        insert novoLead;
        Task taskLead = [SELECT Subject, Description, whoId FROM Task WHERE whoId =: novoLead.Id];
        System.assertEquals('Verificar cadastro!', taskLead.Subject);
        System.assertEquals('Verificar se o cadastro está completo associado ao lead', taskLead.Description);
    }
    @isTest
    public static void testOpp() {
        // Test Opp Naruto
        Lead novoLead = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        AnnualRevenue = 0,
        area_de_interesse__c = 'Naruto'
        );
        insert novoLead;
        Lead novoLeadEditado = new Lead(
        id = novoLead.id,
        status = 'Closed - Converted'
        );
        update novoLeadEditado;
        Opportunity opp = [SELECT Name, Produto__c FROM Opportunity WHERE Lead__c =: novoLeadEditado.Id];
        System.assertEquals('Oportunidade do lead de id: ' + novoLeadEditado.id, opp.Name, 'Falha no teste da oportunidade!');
        System.assertEquals('Action Figure de Kurama', opp.Produto__c, 'Falha no teste da oportunidade!');
        
        // Test Opp Pokemon
        Lead novoLead2 = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        AnnualRevenue = 0,
        area_de_interesse__c = 'Pokemon'
        );
        insert novoLead2;
        Lead novoLeadEditado2 = new Lead(
        id = novoLead2.id,
        status = 'Closed - Converted'
        );
        update novoLeadEditado2;
        Opportunity opp2 = [SELECT Name, Produto__c FROM Opportunity WHERE Lead__c =: novoLeadEditado2.Id];
        System.assertEquals('Oportunidade do lead de id: ' + novoLeadEditado2.id, opp2.Name, 'Falha no teste da oportunidade!');
        System.assertEquals('Action Figure de Pikachu', opp2.Produto__c, 'Falha no teste da oportunidade!');
        
        // Test Opp Frozen
        Lead novoLead3 = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        AnnualRevenue = 0,
        area_de_interesse__c = 'Frozen'
        );
        insert novoLead3;
        Lead novoLeadEditado3 = new Lead(
        id = novoLead3.id,
        status = 'Closed - Converted'
        );
        update novoLeadEditado3;
        Opportunity opp3 = [SELECT Name, Produto__c FROM Opportunity WHERE Lead__c =: novoLeadEditado3.Id];
        System.assertEquals('Oportunidade do lead de id: ' + novoLeadEditado3.id, opp3.Name, 'Falha no teste da oportunidade!');
        System.assertEquals('Action Figure de Olaff', opp3.Produto__c, 'Falha no teste da oportunidade!');
    }
}