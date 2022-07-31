trigger AccountTrigger on Account (before insert, after insert, before update) {
    if(Trigger.isBefore){
        AccountTriggerHandler.changeRatingByAnnualRevenue(trigger.new);
        AccountTriggerHandler.changeRatingByIndustry(trigger.new);
        if(Trigger.isInsert){
            AccountTriggerHandler.typeIsBlank(trigger.new);
            AccountTriggerHandler.phoneIsBlank(trigger.new);
        }             
    }
    if(Trigger.isAfter){
        AccountTriggerHandler.newTask(trigger.new);
    }
}