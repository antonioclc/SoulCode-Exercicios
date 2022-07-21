trigger novoLead on Lead (before insert) {
    for(Lead lead: trigger.new){
        // Tratamento do Fax
        if (lead.Fax == null) {
            lead.Fax = 'Sem fax';
        }
        
        // Tratamento do Site
        if (lead.Website == null) {
            lead.Website = 'Site indefinido';
        }
        
        // Tratamento da receita anual
        if (lead.AnnualRevenue == null) {
            lead.AnnualRevenue = 0;
        }
        
        if (lead.AnnualRevenue >= 0 && lead.AnnualRevenue < 10000 ) {
            lead.Rating = 'Cold';
        } else if (lead.AnnualRevenue >= 10000 && lead.AnnualRevenue < 100000) {
            lead.Rating = 'Warm';
        } else {  
            lead.Rating = 'Hot';
        }    
    }
}