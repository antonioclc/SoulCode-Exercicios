@isTest public class OpportunityTriggerTest {
    @testSetup static void setup() {
        insert new Opportunity(Name = 'Teste Amount - Value Proposition', CloseDate = Date.today() + 10, Amount = 150000);
        insert new Opportunity(Name = 'Teste Amount - Negotiation/Review', CloseDate = Date.today() + 10, Amount = 500001);
        insert new Opportunity(Name = 'Teste Amount - Prospecting', CloseDate = Date.today() + 10, Amount = 0);
        insert new Opportunity(Name = 'Teste StageName - Closed Won', CloseDate = Date.today() + 10, Amount = 60000);
        insert new Opportunity(Name = 'Teste StageName - Closed Lost', CloseDate = Date.today() + 10, Amount = 0);
    }

    @isTest public static void changeStageNameByAmount() {
        Opportunity opp1 = [SELECT StageName FROM Opportunity WHERE Name LIKE '%Value Proposition'];
        Opportunity opp2 = [SELECT StageName FROM Opportunity WHERE Name LIKE '%Negotiation/Review'];
        Opportunity opp3 = [SELECT StageName FROM Opportunity WHERE Name LIKE '%Prospecting'];

        System.assert(opp1.StageName == 'Value Proposition', 'Falha no test "changeStageNameByAmount"');
        System.assert(opp2.StageName == 'Negotiation/Review', 'Falha no test "changeStageNameByAmount"');
        System.assert(opp3.StageName == 'Prospecting', 'Falha no test "changeStageNameByAmount"');
    }

    @isTest public static void testTaskInsert() {
        Opportunity opp = [SELECT StageName FROM Opportunity WHERE Name LIKE '%Closed Won'];
        
        Test.startTest();
        Opportunity editedOpp = new Opportunity(Id = opp.Id, StageName = 'Closed Won'); 
        update editedOpp;
        Test.stopTest();
        
        Task taskAcc = [SELECT Subject, Description FROM Task WHERE whatId =: editedOpp.Id];

        System.assertEquals('Parabenizar a empresa pela nova aquisição', taskAcc.Subject);
        System.assertEquals('Parabenizar a empresa pela nova aquisição', taskAcc.Description);
    }

    @isTest public static void concludeOpportunity() {
        Opportunity opp = [SELECT StageName FROM Opportunity WHERE Name LIKE '%Closed Lost'];
        
        Test.startTest();
        Opportunity editedOpp = new Opportunity(Id = opp.Id, StageName = 'Closed Lost');
        update editedOpp;
        Opportunity failOpp = new Opportunity(Id = editedOpp.Id, StageName = 'Closed Won');
        Database.SaveResult res = Database.update(failOpp, false);
        Test.stopTest();
        
        System.assertEquals('Está oportunidade foi perdida!', res.getErrors()[0].getMessage());
        System.assertEquals('FIELD_CUSTOM_VALIDATION_EXCEPTION', String.ValueOf(res.getErrors()[0].getStatusCode()));
    }
}