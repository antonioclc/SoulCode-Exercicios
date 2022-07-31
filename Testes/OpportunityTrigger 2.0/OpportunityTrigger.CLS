trigger OpportunityTrigger on Opportunity (before insert, before update, after update) {
    if (trigger.isBefore) {
        if (trigger.isInsert) {
            OpportunityTriggerHandler.changeStageNameByAmount(trigger.new);
        }
        if (trigger.isUpdate) {
            for (Opportunity opp : trigger.new) {
                string oldStageName = trigger.oldMap.get(opp.id).StageName;
                OpportunityTriggerHandler.concludeOpportunity(trigger.new, oldStageName);
            }
        }
    }
    if (trigger.isAfter) {
        OpportunityTriggerHandler.newTask(trigger.new);
    }
}