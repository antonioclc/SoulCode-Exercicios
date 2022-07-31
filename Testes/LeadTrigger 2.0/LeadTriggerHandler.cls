public class LeadTriggerHandler {
    public static void changeRatingByLeadSource(List<Lead> leads) {
        for (Lead lead : leads){
            if (lead.LeadSource == 'Web') {
				lead.Rating = 'Warm';                 
            } else if (lead.LeadSource == 'Other') {
                lead.Rating = 'Cold';
            }
        }
    }
    public static void newTask(List<Lead> leads) {
        List<Task> tasks = New List<Task>();
        for (Lead lead : leads) {
            if (lead.AnnualRevenue > 50000) {
                Task task = new Task(
                WhoId = lead.Id,
                Subject = 'Verificar cadastro!',
                Description = 'Verificar se o cadastro está completo associado ao lead'
                );
            tasks.add(task);
            }
        }
        INSERT tasks;
    }
    public static void newOpportunity(List<Lead> leads) {
        List<Opportunity> Opportunities = New List<Opportunity>();
        for (Lead lead : leads) {
            if (lead.Status == 'Closed - Converted' && lead.area_de_interesse__c != null) {
                if (lead.area_de_interesse__c == 'Naruto') {
                    Opportunity novaOpp = new Opportunity(
                    Name = 'Oportunidade do lead de id: ' + lead.id,
                    CloseDate = Date.today() + 10,
                    Amount = 0,
                    Lead__c = lead.Id,
                    Produto__c = 'Action Figure de Kurama'
                    );
                    Opportunities.add(novaOpp);
                } else if (lead.area_de_interesse__c == 'Pokemon') {
                    Opportunity novaOpp = new Opportunity(
                    Name = 'Oportunidade do lead de id: ' + lead.id,
                    CloseDate = Date.today() + 10,
                    Amount = 0,
                    Lead__c = lead.Id,
                    Produto__c = 'Action Figure de Pikachu'
                    );
                    Opportunities.add(novaOpp);
                } else {
                    Opportunity novaOpp = new Opportunity(
                    Name = 'Oportunidade do lead de id: ' + lead.id,
                    CloseDate = Date.today() + 10,
                    Amount = 0,
                    Lead__c = lead.Id,
                    Produto__c = 'Action Figure de Olaff'
                    );
                    Opportunities.add(novaOpp);
                }
            }
        }
        INSERT Opportunities;
    }
}