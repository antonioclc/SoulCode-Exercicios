// Apex II - Atividade Trigger Basic
// 1 - Crie uma trigger em Lead que antes de inserir um novo lead, coloque informações nos campos fax (XX) XXXXX - XXXX, Site www.example.com, e receita anual 0.

// 2 - Altere o código da trigger de Lead realizando condições para verificar se:
	se o fax estiver vazio, atribuir sem fax 
	se site estiver vazio, atribuir site indefinido
	se receita anual estiver vazio, atribuir 0

// 3 - Atualize o código da trigger de Lead, adicionando as seguintes condições:
	Se receita anual >= 0 e < 10000
	a classificação deverá ser Cold
	Se receita anual >= 10000 e < 100000
	a classificação deverá ser Warm
	Se receita anual >= 100000
	a classificação é Hot

// Resolução

trigger novoLead on Lead (before insert) {
    for(Lead lead: trigger.new){
        // Tratamento do Fax
        if (lead.Fax == null) {
            lead.Fax = 'Sem fax';
        } else {
            lead.Fax = '8188888888';
        }
        
        // Tratamento do Site
        if (lead.Website == null) {
            lead.Website = 'Site indefinido';
        } else {
            lead.Website = 'www.example.com';
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