// Apex I - ATIVIDADE LIST E POO
// 1
System.debug('QUESTÃO 1');
    
List<String> series = new List<String>{ 'Prison Break', '24 horas', 'Peaky Blinders', 'GOT', 'Stranger Things', 'Get Down Brothers' };    

for (string s : series) {
   integer indice = series.indexOf(s);
   System.debug((indice + 1) + ' - ' + s);
}

// 2
System.debug('QUESTÃO 2');

Map<String, String> dados = new Map<String, String>();
dados.put('key', 'valor');
dados.put('empresa', 'mamaco corp');
dados.put('ceo', 'romero brito');
dados.put('valor', '8000000');
dados.put('cnpj', '1233210001-99');

string empresa = dados.get('empresa');
string valor = dados.get('valor');
string ceo = dados.get('ceo');

System.debug('A empresa ' + empresa + ' alcançou o valor de mercado de ' + valor + '. O CEO ' + ceo + ' declarou ser o primeiro passo para dominar o mundo.');

// 3 
System.debug('QUESTÃO 3');

Set<String> listaDeAlunos = new Set<String>{'Antônio', 'Alyne', 'Roberta', 'Mariane', 'Joaquim', 'Tamiris', 'Bruno', 'Rawana', 'Paulo', 'Michele'};
string nomeDaVerificacao1 = 'Bruno';
Boolean verificao1 = listaDeAlunos.contains(nomeDaVerificacao1);
if (verificao1) {
    System.debug(nomeDaVerificacao1 + ' Está na lista!');
} else {
    System.debug(nomeDaVerificacao1 + ' NÃO Está na lista!');
}
string nomeDaVerificacao2 = 'Rawana';
Boolean verificao2 = listaDeAlunos.contains(nomeDaVerificacao2);
if (verificao2) {
    System.debug(nomeDaVerificacao2 + ' Está na lista!');
} else {
    System.debug(nomeDaVerificacao2 + ' NÃO Está na lista!');
}
string nomeDaVerificacao3 = 'Alyce';
Boolean verificao3 = listaDeAlunos.contains(nomeDaVerificacao3);
if (verificao3) {
    System.debug(nomeDaVerificacao3 + ' Está na lista!');
} else {
    System.debug(nomeDaVerificacao3 + ' NÃO Está na lista!');
}

// 4 

// Resposta: Classe é uma estrutura abstrata de algo que tem características e ações pre-definidas para ser usada, ou server de "base" para outras estruturas (objetos).
// Exemplos: Pessoas, Automóveis, Animais, Comidas, etc.

// 5 

// Resposta: Encapsulamento é uma forma de demilitar acesso a certas informações com objetivo de satisfer o usuário apenas com o que lhe interessa, evitando problemas de segurança e excesso de informação.
// Exemplos: Em um e-commerce, cada usuário tem seu acesso com todos os dados (compras, endereço, preferências), e essas informações só ele terá acesso.

// 6 

// Resposta: Herança é o que é herdado do pai para o(s) filhos(s), Polimorfismo é a possibilidade de mudar propriedades e métodos para satisfazer as necessidades da aplicação.
