public class OpportunityTriggerHandler {
    // BEFORE_INSERT
    public static void changeStageNameByAmount(List<Opportunity> opps){
        for (Opportunity opp : opps){
            if (opp.Amount >= 100000 && opp.Amount <= 200000) {
                opp.StageName = 'Value Proposition';
            } else if(opp.Amount > 500000) {
                opp.StageName = 'Negotiation/Review';
            } else {
                opp.StageName = 'Prospecting';
            }
        }   
    }
    // BEFORE_UPDATE
    public static void concludeOpportunity(List<Opportunity> opps, string oldStageName) {
        for (Opportunity opp : opps) {
            if (oldStageName == 'Closed Lost' && opp.StageName != 'Closed Lost') {
                opp.addError('Está oportunidade foi perdida!');
            }
        }   
    }
    // AFTER
    public static void newTask(List<Opportunity> opps) {
        List<Task> tarefas = New List<Task>();
        for (Opportunity opp : opps) {
            if (opp.Amount >= 50000 && opp.StageName == 'Closed Won') {
                Task novaTarefa = new Task(
                WhatId = opp.Id,
                Subject = 'Parabenizar a empresa pela nova aquisição',
                Description = 'Parabenizar a empresa pela nova aquisição'
                );
                tarefas.add(novaTarefa);
            }
        }
        insert tarefas;
    }
}