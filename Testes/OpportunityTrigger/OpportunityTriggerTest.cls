@isTest
public class OpportunityTriggerTest {
	@isTest
    public static void testAmountValue() {
        Opportunity newOpp = new Opportunity(
        Name = 'Teste Amount - Value Proposition',
        CloseDate = Date.today() + 10,
        Amount = 150000
        );
        insert newOpp;
        Opportunity opp = [SELECT StageName FROM Opportunity WHERE Id =: newOpp.Id];
        System.assertEquals('Value Proposition', opp.StageName);
        
        Opportunity newOpp2 = new Opportunity(
        Name = 'Teste Amount - Prospecting',
        CloseDate = Date.today() + 10,
        Amount = 0
        );
        insert newOpp2;
        Opportunity opp2 = [SELECT StageName FROM Opportunity WHERE Id =: newOpp2.Id];
        System.assertEquals('Prospecting', opp2.StageName);
    }
    @isTest
    public static void testStageName() {
        Opportunity newOpp = new Opportunity(
        Name = 'Teste Amount - Value Proposition',
        CloseDate = Date.today() + 10
        );
        insert newOpp;
        Opportunity editedOpp = new Opportunity(
        Id = newOpp.Id,
        StageName = 'Closed Lost'
        );
        update editedOpp;
        Opportunity editedOpp2 = new Opportunity(
        Id = newOpp.Id,
        StageName = 'Closed Won'
        );
        Database.SaveResult res = Database.update(editedOpp2, false);
        System.assertEquals('Está oportunidade foi perdida!', res.getErrors()[0].getMessage());
        System.assertEquals('FIELD_CUSTOM_VALIDATION_EXCEPTION', String.ValueOf(res.getErrors()[0].getStatusCode()));
    }
    @isTest
    public static void testTaskInsert() {
        Opportunity newOpp = new Opportunity(
        Name = 'Teste Amount - Value Proposition',
        CloseDate = Date.today() + 10,
        Amount = 60000
        );
        insert newOpp;
        Opportunity editedOpp = new Opportunity(
        Id = newOpp.Id,
        StageName = 'Closed Won'
        ); 
        update editedOpp;
        Task taskAcc = [SELECT Subject, Description, whatId FROM Task WHERE whatId =: newOpp.Id];
        System.assertEquals('Parabenizar a empresa pela nova aquisição', taskAcc.Subject);
        System.assertEquals('Parabenizar a empresa pela nova aquisição', taskAcc.Description);
    }
}