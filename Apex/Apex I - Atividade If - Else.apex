// Apex I - Atividade If - Else
// 1. Defina um valor e escreva a mensagem ‘É MAIOR QUE 10!’ se o valor lido for maior
// que 10, caso contrário escrever NÃO É MAIOR QUE 10! */

integer valorQuestao1 = 11;

if (valorQuestao1 > 10) {
    System.debug('É MAIOR QUE 10!');
} else {
    System.debug('NÃO É MAIOR QUE 10!');
}

// 2. Defina um valor e escreva se é positivo ou negativo (considere o valor zero como
// positivo). */

integer valorQuestao2 = -10;

if (valorQuestao2 >= 0) {
	System.debug('NÚMERO POSITIVO!');
} else {
    System.debug('NÚMERO NEGATIVO!');
}

// 3. Ler dois valores (considere que não serão lidos valores iguais) e escrevê-los em
// ordem crescente. */

integer valor_1Questao3 = 6;
integer valor_2Questao3 = 7;

if (valor_1Questao3 == valor_2Questao3) {
    System.debug('OS VALORES NÃO PODEM SER IGUAIS!');
} else if (valor_1Questao3 > valor_2Questao3) {
    System.debug(valor_1Questao3 + ', ' + valor_2Questao3);
} else {
    System.debug(valor_2Questao3 + ', ' + valor_1Questao3);
}

// 4. Ler dois valores (considere que não serão lidos valores iguais) e escrever o maior
// deles. */

integer valor_1Questao4 = 8;
integer valor_2Questao4 = 7;

if (valor_1Questao4 == valor_2Questao4) {
    System.debug('OS VALORES NÃO PODEM SER IGUAIS!');
} else if (valor_1Questao4 > valor_2Questao4) {
    System.debug(valor_1Questao4);
} else {
    System.debug(valor_2Questao4);
}

// 5. Ler o ano atual e o ano de nascimento de uma pessoa. Escrever uma mensagem
// que diga se ela poderá ou não votar este ano (não é necessário considerar o mês
// em que a pessoa nasceu). */

integer anoAtual = Date.today().year();
integer anoDeNascimento = 2000;
integer idade = anoAtual - anoDeNascimento;

if (idade >= 16) {
    System.debug('VOCÊ PODE VOTAR! 😃');
} else {
    System.debug('VOCÊ NÃO PODE VOTAR! 😔');
}

// 6. Defina as notas da 1a. e 2a. avaliações de um aluno. Calcular a média aritmética
// simples e escrever uma mensagem que diga se o aluno foi ou não aprovado
// (considerar que nota igual ou maior que 6 o aluno é aprovado). Escrever também a
// média calculada. */

decimal nota1 = 8.5;
decimal nota2 = 0.2;
decimal media = (nota1 + nota2) / 2;

if (media >= 6) {
    System.debug('VOCÊ ESTÁ APROVADO! 😃');
} else {
    System.debug('VOCÊ ESTÁ REPROVADO! 😿');
}

// 7. Defina dois valores e imprimir uma das três mensagens a seguir:
// ● ‘Números iguais’, caso os números sejam iguais
// ● ‘Primeiro é maior’, caso o primeiro seja maior que o segundo;
// ● ‘Segundo maior’, caso o segundo seja maior que o primeiro. */

integer valor_1Questao7 = 8;
integer valor_2Questao7 = 9;

if (valor_1Questao7 == valor_2Questao7) {
    System.debug('Números iguais');
} else if (valor_1Questao7 > valor_2Questao7) {
    System.debug('Primeiro é maior');
} else {
    System.debug('Segundo é maior');
}

// 8. Faça um algoritmo para definir: a descrição do produto (nome), a quantidade
// adquirida e o preço unitário. Calcular e escrever o total (total = quantidade adquirida
// * preço unitário), o desconto e o total a pagar (total a pagar = total - desconto),
// sabendo-se que:
// ○ Se quantidade <= 5 o desconto será de 2% -
// ○ Se quantidade > 5 e quantidade <=10 o desconto será de 3% -
// ○ Se quantidade > 10 o desconto será de 5% */

string nomeDoProduto = 'Produto X';
integer quantidade = 10;
decimal desconto;
decimal precoUnitario = 10;
decimal total = quantidade * precoUnitario;
decimal totalAPagar;

if (quantidade <= 5) {
    desconto = 0.98;
} else if ( quantidade > 5 && quantidade <= 10) {
	desconto = 0.97;
} else { 
    desconto = 0.95;
}

totalAPagar = total * desconto;

System.debug('Sua compra de ' + quantidade + ' unidade(s) do ' + nomeDoProduto + ' ficou no valor de R$' + total.format() + '. Com desconto de ' + (((desconto * 100) - 100) *-1) + '%, você irá pagar R$' + totalAPagar.format());

// 9. Faça um algoritmo para ler: número da conta do cliente, saldo, débito e crédito.
// Após, calcular e escrever o saldo atual (saldo atual = saldo - débito + crédito).
// Também testar se saldo atual for maior ou igual a zero escrever a mensagem 'Saldo
// Positivo';, senão escrever a mensagem 'Saldo Negativo'. */

integer numeroDaConta = 0001;
decimal credito = 1000.50;
decimal debito = 580.90;
decimal saldo = credito - debito;

if (saldo >= 0) {
    System.debug('Saldo Positivo 😃');
} else {
    System.debug('Saldo Negativo 😿');
}

