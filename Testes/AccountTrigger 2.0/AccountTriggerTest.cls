@isTest public class AccountTriggerTest {
    @testSetup static void setup() {
        insert new Account(Name = 'Test changeRatingByIndustry 1', Phone = '123456', Industry = 'Technology', AnnualRevenue = 0);
        insert new Account(Name = 'Test changeRatingByIndustry 2', Phone = '123456', AnnualRevenue = 0);
        insert new Account(Name = 'Test changeRatingByAnnualRevenue 1', Phone = '123456', AnnualRevenue = 0);
        insert new Account(Name = 'Test changeRatingByAnnualRevenue 2', Phone = '123456', AnnualRevenue = 0);
        insert new Account(Name = 'Test changeRatingByAnnualRevenue 3', Phone = '123456', AnnualRevenue = 100000);
        insert new Account(Name = 'Test changeRatingByAnnualRevenue 4', Phone = '123456', AnnualRevenue = 500001);
        insert new Account(Name = 'Test typeIsBlank', Phone = '123456', AnnualRevenue = 0, Type = '');
    }

    @isTest public static void testChangeRatingByIndustry() {
        Account acc1 = [SELECT Rating FROM Account WHERE Name = 'Test changeRatingByIndustry 1'];
        Account acc2 = [SELECT Id, Rating FROM Account WHERE Name = 'Test changeRatingByIndustry 2'];

        Test.startTest();
        Account editAcc2 = new Account(id = acc2.id, Industry = 'Finance');
        update editAcc2;
        Test.stopTest();

        Account editedAcc2 = [SELECT Id, Rating FROM Account WHERE Id =: editAcc2.Id];

        System.assertEquals('Hot', acc1.Rating, 'Erro no teste changeRatingByIndustry');
        System.assertEquals('Hot', editedAcc2.Rating, 'Erro no teste changeRatingByIndustry');
    }

    @isTest public static void testChangeRatingByAnnualRevenue() {
        Account acc1 = [SELECT Id FROM Account WHERE Name = 'Test changeRatingByAnnualRevenue 1'];
        Account acc2 = [SELECT Rating FROM Account WHERE Name = 'Test changeRatingByAnnualRevenue 2'];
        Account acc3 = [SELECT Rating FROM Account WHERE Name = 'Test changeRatingByAnnualRevenue 3'];
        Account acc4 = [SELECT Rating FROM Account WHERE Name = 'Test changeRatingByAnnualRevenue 4'];

        Test.startTest();
        Account editAcc1 = new Account(id = acc1.id, AnnualRevenue = -1);
        Database.SaveResult res = Database.update(editAcc1, false);
        Test.stopTest();

        System.assertEquals('O campo receita Anual está invalido!', res.getErrors()[0].getMessage());
        System.assertEquals('FIELD_CUSTOM_VALIDATION_EXCEPTION', String.ValueOf(res.getErrors()[0].getStatusCode()));
        System.assertEquals('Cold', acc2.Rating, 'Erro no teste changeRatingByAnnualRevenue');
        System.assertEquals('Warm', acc3.Rating, 'Erro no teste changeRatingByAnnualRevenue');
        System.assertEquals('Hot', acc4.Rating, 'Erro no teste changeRatingByAnnualRevenue');
    }

    @isTest public static void testTypeIsBlank() {
        Account acc = [SELECT Type FROM Account WHERE Name = 'Test typeIsBlank'];
        
        System.assertEquals('Prospect', acc.Type, 'Erro no teste typeIsBlank');
    }

    @isTest public static void testPhoneIsBlank() {        
        Test.startTest();
        Account phoneBlank = new Account(Name = 'Test phoneIsBlank', Phone = '', AnnualRevenue = 0);
        Database.SaveResult phoneError = Database.insert(phoneBlank, false);
        Test.stopTest();
        
        System.assertEquals('O campo do telefone deve ser preenchido', phoneError.getErrors()[0].getMessage());
        System.assertEquals('FIELD_CUSTOM_VALIDATION_EXCEPTION', String.ValueOf(phoneError.getErrors()[0].getStatusCode()));
    }
}