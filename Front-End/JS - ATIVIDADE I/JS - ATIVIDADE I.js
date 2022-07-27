// 01 - Elabore um script que leia dois números e imprima  o resultado das operações aritméticas soma, produto, divisão e resto da divisão (%) entre esses números.

const num1 = 12;
const num2 = 5;

console.log('soma -> ' + (num1 + num2));
console.log('produto -> ' + (num1 * num2));
console.log('divisão -> ' + (num1 / num2));
console.log('resto da divisão -> ' + (num1 % num2));

// 02 - Dado o tamanho do lado de um quadrado, calcular a área e o perímetro do mesmo.

const lado = 5;
const A = lado ** 2;
const P = lado * 4;

console.log('Área do quadrado -> ' + A);
console.log('Perímetro do quadrado -> ' + P);

// 03 - Dado que a fórmula para conversão de Fahrenheit para Celsius é C = 5/9 (F – 32), leu um valor de temperatura em Fahrenheit e exibi-lo em Celsius

const F = 50;
const converteEmC = 5/9 * (F - 32); 

console.log('Temperatura em °C -> ' + converteEmC);

// 04 - Faça um algoritmo que transforme a velocidade fornecida em m/s pelo usuário para Km/h. Para tal, multiplique o valor em m/s por 3,6.

const Vms = 50;
const converteVkmh = Vms * 3.6;

console.log('Velocidade em km/h -> ' + converteVkmh)

// 05 - Escreva um programa que leia um número e imprima se este número é ou não par.

const num = 3;
if (num % 2 === 0) {
    console.log(num + ' é par!')
} else {
    console.log(num + ' é ímpar!')
}

// 06 - Escreva um programa que leia três números e mostre o maior entre eles.
// fonte: https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global_Objects/Array/sort

const numeros = [4, 20, 5];

numeros.sort(function(a, b) {
    return a - b;
});

console.log('O número maior é -> ' + numeros[numeros.length - 1]);

// 07 - Em uma certificação são feitos 5 exames (I, II, III, IV e V). Escreva um programa que leia as notas destes exames e imprima a classificação do aluno, sabendo que a média é 70.
// Classificação: 
// A – passou em todos os exames;
// B – passou em I, II e IV, mas não em III ou V;
// C – passou em I e II, III ou IV, mas não em V.
// Reprovado – outras situações

const exameI = 70;
const exameII = 70;
const exameIII = 70;
const exameIV = 70;
const exameV = 70;
const notasDosExames = [exameI, exameII, exameIII, exameIV, exameV];
let classificação = 0;

for (exame of notasDosExames) {
    if (exame >= 70) {
        classificação++;
    }
}

if (classificação === 5) {
    console.log('Classificação A!');
} else if (classificação === 4) {
    console.log('Classificação B!');
} else if (classificação === 3) {
    console.log('Classificação C!');
} else {
    console.log('Reprovado!');
}

// 08 - Chama-se ano bissexto o ano ao qual é acrescentado um dia extra, ficando ele com 366 dias, um dia a mais do que os anos normais de 365 dias, ocorrendo a cada quatro anos. Escreva um programa que verifique se um ano é bissexto. Um ano é bissexto se ele é divisível por 4. Entretanto, se o ano é divisível por 100, ele não é bissexto. Mas, se ele for divisível por 400, ele volta a ser bissexto.

// a. São bissextos os anos: 1600, 1996, 2000, 2004, 2008, 2012, 2016, 2400, 2800, ...
// b. Não são bissextos: 1500, 1974, 1982, 1983, 1990, 2018, 2022, 2030, 2038, ...

const _ano = 2200;

if (_ano % 4 === 0) {
    if (_ano % 100 === 0) {
        if (_ano % 400 === 0) {
            console.log('Este ano é bissexto');
        } else {
            console.log('Este ano NÃO é bissexto');
        }
    } else {
        console.log('Este ano é bissexto');
    }
} else {
    console.log('Este ano NÃO é bissexto');
}

// 09 - Um novo modelo de carro da Tesal, super econômico foi lançado.
// Ele faz 26km com 1 litro de combustível.
// Cada litro de combustível custa R$ 6,29.

// Faça um programa que pergunte ao usuário quanto de dinheiro ele tem e em seguida diga quantos litros de combustível ele pode comprar e quantos kilometros o carro consegue andar com este tanto de combustível.

const dinheiro = 100;
const quantidadeLitros = (dinheiro / 6.29).toFixed(2);
const distanciaEmKm = (quantidadeLitros * 26).toFixed(2);

console.log('Você tem R$' + dinheiro + ', pode comprar ' + quantidadeLitros + ' litros de combustível e irá percorrer ' + distanciaEmKm + 'km!' );

// 10 - Escreva um algoritmo que receba dois números reais e um código de seleção do usuário. Se o código digitado for 1, faça o algoritmo somar os dois números previamente digitados e mostrar o resultado; se o código de seleção for 2, os números deverão ser multiplicados; se o código de seleção for 3, o primeiro número deve ser dividido pelo segundo.

const numero1 = 10;
const numero2 = 5;
const codigo = 3;   

const resposta = codigo === 1? numero1 + numero2 : codigo === 2? numero1 * numero2 : numero1 / numero2;

console.log('Resultado -> ' + resposta);

// 11 - Crie um object array com os valores de um veículo, sendo as chaves são marca, modelo, cor, ano, valor, renavam, placa, cada um das chaves devem possuir valores. Exiba através da body do HTML as informações do veículo:

// Veiculo
// marca: X
// modelo: x
// cor: x
// ano: x
// renavam: x
// placa: x

const carro = [{marca: 'Fiat', modelo: 'Palio', cor: 'Branco', ano: '2015', renavam: '123456', placa: 'YXZ-1234'}]

function newContent() {
    document.open();
    document.write('<h1>Dados do Carro:</h1>');
    document.write('<p>Marca: ' + carro[0].marca + '<p>');
    document.write('<p>Modelo: ' + carro[0].modelo + '<p>');
    document.write('<p>Cor: ' + carro[0].cor + '<p>');
    document.write('<p>Ano: ' + carro[0].ano + '<p>');
    document.write('<p>Renavam: ' + carro[0].renavam + '<p>');
    document.write('<p>Placa: ' + carro[0].placa + '<p>');
    document.close();
}

// 12 - Crie um array com valores de 10 alunos de sua turma, exiba os valores existentes nas posições: 0,5,2,6,9 e 7.

const alunos = ['Antônio', 'Marcos', 'Ralffer', 'Roberta', 'Rodrigo', 'Alyne', 'Bruno', 'Débora', 'Guilherme', 'Joaquim']
const posicoes = [0, 5, 2, 6, 9, 7];

for(let posicao of posicoes) {
    console.log(alunos[posicao]);
}

// 13 - Crie um array com 5 posições e em cada posição, um object array com as seguintes chave/valor (id, nome, telefone, email). Exiba o array via console. e acesse as informações do object na posição 3.

const array = [
    {id: 1, nome: 'Antônio', telefone: '123456', email: 'antonio@soulcode.com'},
    {id: 2, nome: 'Marcos', telefone: '234567', email: 'marcos@soulcode.com'},
    {id: 3, nome: 'Ralffer', telefone: '345678', email: 'ralffer@soulcode.com'},
    {id: 4, nome: 'Roberta', telefone: '456789', email: 'roberta@soulcode.com'},
    {id: 5, nome: 'Rodrigo', telefone: '654321', email: 'rodrigo@soulcode.com'},
];

console.log('Id: ' + array[3].id);
console.log('Nome: ' + array[3].nome);
console.log('Telefone: ' + array[3].telefone);
console.log('Email: ' + array[3].email);