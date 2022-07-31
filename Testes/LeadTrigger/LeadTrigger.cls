trigger LeadTrigger on Lead (before insert, after insert, after update) {
    if (trigger.isBefore) {
        for (Lead lead : trigger.new){
            if (lead.LeadSource == 'Web') {
				lead.Rating = 'Warm';                 
            } else if (lead.LeadSource == 'Other') {
                lead.Rating = 'Cold';
            }
        }
    }
    if (trigger.isAfter) {
        List<Task> tarefas = New List<Task>();
        List<Opportunity> oportunidades = New List<Opportunity>();
        for (Lead lead : trigger.new) {
            if (trigger.isInsert) {
                if (lead.AnnualRevenue > 50000) {
                    Task novaTarefa = new Task(
                    WhoId = lead.Id,
                    Subject = 'Verificar cadastro!',
                    Description = 'Verificar se o cadastro está completo associado ao lead'
                    );
                tarefas.add(novaTarefa);
                }
            }
            if (trigger.isUpdate) {
                if (lead.Status == 'Closed - Converted' && lead.area_de_interesse__c != null) {
                    if (lead.area_de_interesse__c == 'Naruto') {
                        Opportunity novaOpp = new Opportunity(
                        Name = 'Oportunidade do lead de id: ' + lead.id,
                        CloseDate = Date.today() + 10,
                        Amount = 0,
                        Lead__c = lead.Id,
                        Produto__c = 'Action Figure de Kurama'
                        );
                        oportunidades.add(novaOpp);
                    } else if (lead.area_de_interesse__c == 'Pokemon') {
                        Opportunity novaOpp = new Opportunity(
                        Name = 'Oportunidade do lead de id: ' + lead.id,
                        CloseDate = Date.today() + 10,
                        Amount = 0,
                        Lead__c = lead.Id,
                        Produto__c = 'Action Figure de Pikachu'
                        );
                        oportunidades.add(novaOpp);
                    } else {
                        Opportunity novaOpp = new Opportunity(
                        Name = 'Oportunidade do lead de id: ' + lead.id,
                        CloseDate = Date.today() + 10,
                        Amount = 0,
                        Lead__c = lead.Id,
                        Produto__c = 'Action Figure de Olaff'
                        );
                        oportunidades.add(novaOpp);
                    }
                }
            }
        }
        INSERT tarefas;
        INSERT oportunidades;      
    }
}