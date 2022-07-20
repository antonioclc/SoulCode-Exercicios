// Apex II - Trigger Atividade II
// 1 - Antes de atualizar uma oportunidade, Se a fase anterior estiver fechada e perdida e tentarem alterar para qualquer outra nova fase. Emitir mensagem de erro.
// 2 - Após a atualização de uma oportunidade, se o valor for maior ou igual a 50000 e a fase estiver fechada e ganha, crie uma tarefa associada a ela, com o assunto: Parabenizar a empresa pela nova aquisição.
// 4 - Em oportunidade, quando a fase for alterada para Closed Lost, deve ser inserido um motivo. Se a fase estiver em Closed Lost e motivo estiver vazio, emitir uma mensagem de erro. O motivo deve ser preenchido.
Dica: caso não exista o campo motivo na sua org, crie no gerenciador de objetos.

trigger OpportunityTriger on Opportunity (before update, after update) {
    if (trigger.isBefore) {
        for (Opportunity op : trigger.new){
            if (trigger.oldMap.get(op.id).StageName == 'Closed Lost' && op.StageName != 'Closed Lost') {
                op.addError('Está oportunidade foi perdida!');
            }
            if (op.StageName == 'Closed Lost' && op.Motivo__c == null) {
                op.addError('Insira o motivo da oportunidade ter sido perdida');
            }
        }   
    }
    if (trigger.isAfter) {
        List<Task> tarefas = New List<Task>();
        for (Opportunity op : trigger.new) {
            if (op.Amount >= 50000 && op.StageName == 'Closed Won') {
                Task novaTarefa = new Task(
                WhatId = op.Id,
                Subject = 'Parabenizar a empresa pela nova aquisição',
                Description = 'Parabenizar a empresa pela nova aquisição'
                );
                tarefas.add(novaTarefa);
            }
        }
        INSERT tarefas;
    }
}

// 3 -  Após inserir um Lead, a receita anual estiver superior a 50000, criar uma tarefa com assunto verificar se o cadastro está completo associado ao lead.

trigger LeadTrigger on Lead (after insert) {
    List<Task> tarefas = New List<Task>();
    for (Lead lead : trigger.new) {
        if (lead.AnnualRevenue > 50000) {
            Task novaTarefa = new Task(
            WhoId = lead.Id,
            Subject = 'Verificar cadastro!',
            Description = 'Verificar se o cadastro está completo associado ao lead'
            );
            tarefas.add(novaTarefa);
        }
    }
    INSERT tarefas;
}