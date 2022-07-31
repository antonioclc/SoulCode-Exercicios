trigger LeadTrigger on Lead (before insert, after insert, after update) {
    if (trigger.isBefore) {
        if (trigger.isInsert) {
            LeadTriggerHandler.changeRatingByLeadSource(trigger.new);
        }
    }
    if (trigger.isAfter) {
        if (trigger.isInsert) {
            LeadTriggerHandler.newTask(trigger.new);
        }
        if (trigger.isUpdate) {
            LeadTriggerHandler.newOpportunity(trigger.new);
        }
    }
}