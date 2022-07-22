trigger OpportunityTrigger on Opportunity (before insert, before update, after update) {
    if (trigger.isBefore) {
        for (Opportunity op : trigger.new){
            if (trigger.isInsert) {
                if (op.Amount >= 100000 && op.Amount <= 200000) {
                    op.StageName = 'Value Proposition';
                } else {
                    op.StageName = 'Prospecting';
                }
            }
            if (trigger.isUpdate) {
                if (trigger.oldMap.get(op.id).StageName == 'Closed Lost' && op.StageName != 'Closed Lost') {
                    op.addError('Está oportunidade foi perdida!');
                }
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
        insert tarefas;
    }
}