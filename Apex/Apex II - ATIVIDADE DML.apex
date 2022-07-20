// Apex II - ATIVIDADE DML
// 1 - Com Apex, insira 2 leads atribuindo valores aos campos considerados obrigatórios. Essa questão deve ser feita SEM LISTA e usando a notação de construtor.

Lead novoLead1 = new Lead(
	firstName = 'Exercício',
    lastName = '1',
    Phone = '123456',
    Company = 'SoulCode'
);

Lead novoLead2 = new Lead(
	firstName = 'Exercício',
    lastName = '1',
    Phone = '123456',
    Company = 'SoulCode'
);

INSERT novoLead1;
INSERT novoLead2;

// 2 - Com Apex, insira 2 oportunidades atribuindo valores aos campos considerados obrigatórios. Essa questão deve ser feita SEM LISTA e usando atribuição direta no objeto.

Opportunity novaOportunidade1 = new Opportunity(
	Name = 'Exercício 2',
    StageName = 'Closed Won',
    CloseDate = Date.Today()
);

Opportunity novaOportunidade2 = new Opportunity(
	Name = 'Exercício 2',
    StageName = 'Closed Won',
    CloseDate = Date.Today()
);

INSERT novaOportunidade1;
INSERT novaOportunidade2;

// 3 - Com Apex, insira uma lista de 10 Contatos com valores obrigatórios, utilizando apenas um insert.

Contact novoContato1 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato2 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato3 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato4 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato5 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato6 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato7 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato8 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato9 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

Contact novoContato10 = new Contact(
    firstName = 'Exercício ',
    lastName = '3'
);

List<Contact> listaDeContatos = new List<Contact>{
    novoContato1, novoContato2, novoContato3,
    novoContato4, novoContato5, novoContato6,
    novoContato7, novoContato8, novoContato9,
    novoContato10
};

INSERT listaDeContatos;

// 4 - Com Apex, crie uma oportunidade, a oportunidade deverá ter um nome, valor de 600000 e fase Qualification, origem do Lead Other e outros campos obrigatórios. Associe a oportunidade a qualquer registro de sua org através do campo accountId.

Opportunity novaOportunidade = new Opportunity(
	Name = 'Exercício 4',
    Amount = 60000,
    StageName = 'Qualification',
    LeadSource = 'Other',
    CloseDate = Date.Today(),
    accountId = '0018a00001pRpiJAAS'
);

INSERT novaOportunidade;

// 5 - Com Apex, crie uma conta chamada AtividadeBraba, hot, telefone  88998877, receita anual 450000 e após isso crie 2 contatos associados a essa conta, contato B1 e B2 e 1 oportunidade também, atenção aos campos obrigatórios e a associação(accountid).

Account novaConta = new Account(
	Name = 'AtividadeBraba',
    Rating = 'Hot',
    Phone = '88998877',
    AnnualRevenue = 450000
);

INSERT novaConta;

Contact novoContato1 = new Contact(
    firstName = 'B1 - Exercício ',
    lastName = '5',
    accountId = novaConta.id
);
    
Contact novoContato2 = new Contact(
    firstName = 'B2 - Exercício ',
    lastName = '5',
    accountId = novaConta.id
);

Opportunity novaOportunidade = new Opportunity(
	Name = 'Exercício 5',
    StageName = 'Closed Won',
    CloseDate = Date.Today(),
    accountId = novaConta.id
);

INSERT novoContato1;
INSERT novoContato2;
INSERT novaOportunidade;

// 6 - Com Apex, atualize 3 registros de conta de sua escolha alterando valores dos campos nome, telefone e classificação, prioridade do cliente e receita anual.

Account atualizaConta1 = new Account(
	Name = 'Exercício 6',
    Rating = 'Cold',
    Phone = '123456',
    AnnualRevenue = 150,
    id = '0018a00001pRrciAAC'
);

Account atualizaConta2 = new Account(
	Name = 'Exercício 6',
    Rating = 'Cold',
    Phone = '123456',
    AnnualRevenue = 150,
    id = '0018a00001pRrcdAAC'
);

Account atualizaConta3 = new Account(
	Name = 'Exercício 6',
    Rating = 'Cold',
    Phone = '123456',
    AnnualRevenue = 150,
    id = '0018a00001pRrcYAAS'
);

List<Account> listaDeContas = new List<Account> {
   atualizaConta1, atualizaConta2, atualizaConta3 
};

UPDATE listaDeContas;

// 7 - Com Apex, atualize o estado/província de cobrança para CE de todas as contas que possuem o estado/província vazios(null).

List<Account> listaDeContas = [SELECT Id, Name, BillingState FROM Account WHERE BillingState = null];

for (Account acc: listaDeContas) {
    acc.BillingState = 'CE';
}

UPDATE listaDeContas;

// 8 - Com Apex, atualize todos os leads que não possuem classificação para COLD.

OBS: O registro de ID 00Q8a00001qdyyxEAA possui o primeiro nome de ¨Tom¨, invalidando a atualização por ter 3 ou menos caracteres, por isso usarei um IF no meu código.

List<Lead> listaDeLeads = [SELECT Id, FirstName, Rating FROM Lead WHERE Rating = null];

for (Lead lead: listaDeLeads) {
    if (lead.FirstName.length() <= 3) {
        lead.FirstName = 'Goku';
    }
    lead.Rating = 'Cold';
}

UPDATE listaDeLeads;

// 9 - Delete 3 registros de sua escolha em Oportunidade e Contas.

Opportunity deletaOportunidade = new Opportunity(
	id = '0068a00001Gu7pyAAB'
);

Account deletaConta1 = new Account(
	id = '0018a00001pRs11AAC'
);

Account deletaConta2 = new Account(
	id = '0018a00001pRroBAAS'
);

DELETE deletaOportunidade;
DELETE deletaConta1;
DELETE deletaConta2;

// 10 - Delete as contas com data de criação para o dia de HOJE.

List<Account> listaDeContas = [SELECT Id, Name FROM Account WHERE createdDate = today];

DELETE listaDeContas;


