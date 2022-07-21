@isTest
public class novoLeadTest {
	@isTest
    public static void testFax() {
        Lead novoLead = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted'
        );
        insert novoLead;
        Lead leadInserido = [SELECT fax FROM Lead WHERE Id =: novoLead.id];
        System.assertEquals('Sem fax', leadInserido.fax, 'Falha no teste do fax!');
    }
    @isTest
    public static void testWebsite() {
        Lead novoLead = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted'
        );
        insert novoLead;
        Lead leadInserido = [SELECT Website FROM Lead WHERE Id =: novoLead.id];
        System.assertEquals('Site indefinido', leadInserido.Website, 'Falha no teste do website!');
    }
    @isTest
    public static void testReceitaAnual() {
        Lead novoLead = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted'
        );
        insert novoLead;
        Lead leadInserido = [SELECT AnnualRevenue FROM Lead WHERE Id =: novoLead.id];
        System.assertEquals(0, leadInserido.AnnualRevenue, 'Falha no teste da receita anual!');
    }
    @isTest
    public static void testRating() {
        Lead novoLeadCold = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        AnnualRevenue = 1
        );
        insert novoLeadCold;
        Lead leadInseridoCold = [SELECT Rating FROM Lead WHERE Id =: novoLeadCold.id];
        System.assertEquals('Cold', leadInseridoCold.Rating, 'Falha no teste da classificação!');
        
        Lead novoLeadWarm = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        AnnualRevenue = 10000
        );
        insert novoLeadWarm;
        Lead leadInseridoWarm = [SELECT Rating FROM Lead WHERE Id =: novoLeadWarm.id];
        System.assertEquals('Warm', leadInseridoWarm.Rating, 'Falha no teste da classificação!');
        
        Lead novoLeadHot = new Lead(
        firstName = 'novo',
        lastName = 'Lead',
        company = 'Test SA',
        status = 'Open - Not Contacted',
        AnnualRevenue = 100000
        );
        insert novoLeadHot;
        Lead leadInseridoHot = [SELECT Rating FROM Lead WHERE Id =: novoLeadHot.id];
        System.assertEquals('Hot', leadInseridoHot.Rating, 'Falha no teste da classificação!');
    }
}