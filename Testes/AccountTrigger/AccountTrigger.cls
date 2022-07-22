trigger AccountTrigger on Account (before insert, after insert, before update) {
    if(Trigger.isBefore){
        for(Account account: trigger.new) {
            if(String.isblank(account.Type) && Trigger.isInsert){
                account.Type='Prospect';
            } 
            
            if(account.AnnualRevenue == null && Trigger.isInsert){
                account.AnnualRevenue = 0;
            }
            
            if(String.isblank(account.Phone) && Trigger.IsInsert){
                account.Phone.addError('O campo do telefone deve ser preenchido');
            }
            
            if(account.AnnualRevenue < 0 && Trigger.IsUpdate){
                account.addError('O campo receita Anual está invalido!');
            }
        }  
    }
    if(Trigger.isAfter){
    	List<Task> lstT = new List<Task>();
        for(Account acc: trigger.new) {
            if(acc.AnnualRevenue >= 500000) {
                Task newTask = new Task(
                Subject = 'dar boas vindas a ' + acc.Name,
                Priority = 'Low',
                whatId = acc.id
                );
                lstT.add(newTask);
            }
        }
        insert lstT;
    }
}