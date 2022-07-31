public class AccountTriggerHandler {
    public static void typeIsBlank(List<Account> accs) {
        for(Account acc: accs) {
            if(String.isblank(acc.Type)){
                acc.Type = 'Prospect';
            } 
        }
    }
    public static void phoneIsBlank(List<Account> accs) {
        for(Account acc: accs) {
            if(String.isblank(acc.Phone)){
                acc.Phone.addError('O campo do telefone deve ser preenchido');
            }
        }
    }
    public static void changeRatingByIndustry(List<Account> accs) {
        for(Account acc: accs) {
            if(acc.Industry == 'Finance' || acc.Industry == 'Technology') {
                acc.Rating = 'Hot';
            }
        }
    }
    public static void changeRatingByAnnualRevenue(List<Account> accs) {
        for(Account acc: accs) {
            if(acc.AnnualRevenue < 0 || acc.AnnualRevenue == null){
                acc.addError('O campo receita Anual está invalido!');
            } else if(acc.AnnualRevenue >= 0 && acc.AnnualRevenue < 100000) {
                acc.Rating = 'Cold';
            } else if(acc.AnnualRevenue >= 100000 && acc.AnnualRevenue < 500000) {
                acc.Rating = 'Warm';
            } else {
                acc.Rating = 'Hot';
            }
        }
    }
    public static void newTask(List<Account> accs) {
        List<Task> tasks = new List<Task>();
        for(Account acc: accs) {
            if(acc.AnnualRevenue >= 500000) {
                Task newTask = new Task(
                Subject = 'dar boas vindas a ' + acc.Name,
                Priority = 'Low',
                whatId = acc.id
                );
                tasks.add(newTask);
            }
        }
        insert tasks;
    }
}