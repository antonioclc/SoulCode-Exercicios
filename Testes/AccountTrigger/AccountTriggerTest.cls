@isTest
public class AccountTriggerTest {
	@isTest
    public static void testTipoEReceitaAnual() {
        // Teste da Fase e Receita Anual (INSERT)
        Account acc = new Account(Name = 'Realizando teste', Phone = '123456');
        insert(acc);
        Account accInserida = [SELECT Id, Type, AnnualRevenue FROM Account WHERE Name =: acc.Name];
        System.assertEquals('Prospect', accInserida.Type, 'Erro no tipo, deveria estar como Prospect');
        System.assertEquals(0, accInserida.AnnualRevenue, 'Erro na receita anual, deveria estar como 0');
    }
    @isTest
    public static void testReceitaAnualUpdate() {
        //Teste da Receita Anual (UPDATE)
        Account acc = new Account(Name = 'Realizando teste', Phone = '123456');
        insert(acc);
        Account accInserida = [SELECT Id FROM Account WHERE Id =: acc.Id];
        Account accEditada = new Account(
        	Id = accInserida.id,
            Name = 'Realizando teste (Editada)',
            AnnualRevenue = -1
        );
        Database.SaveResult res = Database.update(accEditada, false);
        system.debug(res.getErrors());
        System.assertEquals('O campo receita Anual está invalido!', res.getErrors()[0].getMessage());
        System.assertEquals('FIELD_CUSTOM_VALIDATION_EXCEPTION', String.ValueOf(res.getErrors()[0].getStatusCode()));
    }
    @isTest
    public static void testTelefoneInsert() {
        // Teste da inserção sem Telefone (INSERT)
        Account acc = new Account(Name = 'Realizando teste');
        Database.SaveResult res = Database.insert(acc, false);
        System.assertEquals('Phone', String.ValueOf(res.getErrors()[0].getFields()[0]));
        System.assertEquals('O campo do telefone deve ser preenchido', res.getErrors()[0].getMessage());
        System.assertEquals('FIELD_CUSTOM_VALIDATION_EXCEPTION', String.ValueOf(res.getErrors()[0].getStatusCode()));
    }
    @isTest
    public static void testTarefaInsert() {
        Account acc = new Account(Name = 'Realizando teste da tarefa', Phone = '123456', AnnualRevenue = 5000000);
        insert acc;
        Task taskAcc = [SELECT Subject, Priority, whatId FROM Task WHERE whatId =: acc.Id];
        System.assertEquals('dar boas vindas a ' + acc.Name, taskAcc.Subject);
        System.assertEquals('Low', taskAcc.Priority);
    }
}