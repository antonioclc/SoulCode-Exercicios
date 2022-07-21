// Apex I - Apex Variáveis e Operadores
// 1. Escreva um algoritmo que defina  um valor inteiro e escreva na tela seu valor.

integer numero = 10;
System.debug('Número: ' +  numero);

// 2. Escreva um algoritmo que tenha nome de produto e preço exiba na tela os valores.

string nomeDoProduto = 'Produto 1';
integer precoDoProduto = 20;
System.debug('Produto: ' + nomeDoProduto + ', Preço: ' + precoDoProduto);
    
// 3. Escreva um algoritmo que defina um valor inteiro e escreva (na tela) o seu antecessor. 

integer valor = 10;
System.debug(--valor);
    
// 4. Escreva um algoritmo que tenha dois valores reais, some os valores e exiba o resultado.

integer num1 = 10;
integer num2 = 10;
integer soma = num1 + num2;
System.debug(soma);

// 5. Escreva um algoritmo que receba uma idade, subtraia do ano atual e exiba o resultado, mostrando ‘Nascido em (valorDaSubtração)’.

integer idade = 30;
integer dataDeNascimento = Date.today().addYears(idade * -1).year();
System.debug('Nascido em: ' + dataDeNascimento);

// 6. Escreva um algoritmo para definir as dimensões de um retângulo (base e altura), calcular e escrever a área do retângulo.

integer base = 10;
integer altura = 20;
integer areaDoRetangulo = base * altura;
System.debug('Área do retângulo: ' + areaDoRetangulo);

// 7. Escreva um algoritmo para definir o salário mensal atual de um funcionário e o percentual de reajuste de 25%. Calcular e escrever o valor do novo salário com o acréscimo do reajuste.

integer salario = 3000;
decimal percentualDeReajuste = 1.25;
decimal novoSalario = salario * percentualDeReajuste;
System.debug('Seu novo salário é: R$' + novoSalario.format());

// 8. Escreva um algoritmo que atribua 3 notas, calcule a média e exiba o resultado.

integer nota1 = 6;
integer nota2 = 10;
integer nota3 = 8;
integer media = (nota1 + nota2 + nota3) / 3;
System.debug('A média é: ' + media);

// 9. Faça um algoritmo que define três notas de um aluno, calcule e escreva a média final deste aluno. Considerar que a média é ponderada e que o peso das notas é 2, 3 e 5. Fórmula para o cálculo da média final é:

integer mediaPonderada = ((nota1 * 2) + (nota2 * 3) + (nota3 * 5)) / 10;
System.debug('A média ponderada é: ' + media);
