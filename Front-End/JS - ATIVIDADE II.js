// APRENDIZ DE MAGO
// 1 - Faça um programa que leia 5 números e informe o maior número.

function higherNumber(n1, n2, n3, n4, n5) {
  console.log('O maior número é -> ' + Math.max(n1, n2, n3, n4, n5))
}

// 2 - Faça um programa que leia 5 números e informe a soma e a média dos números.

function sumAndAverageNumbers(n1, n2, n3, n4, n5) {
  console.log('Soma dos números -> ' + (n1 + n2 + n3 + n4 + n5));
  console.log('Média dos números -> ' + ((n1 + n2 + n3 + n4 + n5) / 5).toFixed(2))
}

// 3 -Crie um laço while que irá iterar enquanto n for menor ou igual a 5. Mostra no console os valores obtidos

function whileMaster(n) {
  while(n <= 5) {
    console.log(n)
    n++
  }
}

// 4 - Faça um script que leia três números inteiros, em seguida mostre o maior e o menor deles.

function higherAndSmalllestNumber(n1, n2, n3) {
  console.log('O maior número é -> ' + Math.max(n1, n2, n3))
  console.log('O menor número é -> ' + Math.min(n1, n2, n3))
}

// 5 - Crie uma função que receba 1 parâmetro de temperatura em Celsius. Calcule e mostre as temperaturas em Kelvin e Fahrenheit.

function temperatureConverter(C) {
  const F = C * 1.8 + 32
  const K = C  + 273;
  console.log(C + '°C -> ' + F + '°F')
  console.log(C + '°C -> ' + K + 'K')
}

// 6 - Crie uma função que receba 2 valores inteiros (início e fim) e imprime os valores de início até fim. Caso o valor de fim for menor ou igual ao início, mostrar uma mensagem de erro, valores inválidos.

function printNumbers(start, end) {
  if (end <= start) {
    console.log('O número final não pode ser menor ou igual ao número inicial')
  } else {
    for (let i = start; i <= end; i++) {
      console.log(i)
    }
  }
}

// MESTRE DOS MAGOS
// 7 - Crie uma função que recebe como parâmetros nome, nota1, nota2 e nota3. Se as 3 notas do aluno estiverem no intervalo de 0 a 10, calcular a média, mostrar o nome do aluno e se está aprovado ou não (média 6). Senão exibir notas inválidas.

function studentResult(nome, nota1, nota2, nota3) {
  const verifyGrades = nota1 >= 0 && nota1 <= 10 ? nota2 >= 0 && nota2 <= 10 ? nota3 >= 0 && nota3 <= 10 : false : false
  if (verifyGrades) {
    const average = (nota1 + nota2 + nota3) / 3
    if (average >= 6) {
      console.log('Parabéns ' + nome + ', você está aprovado!')
    } else {
      console.log('Que pena ' + nome + ', você está reprovado!')
    }
  } else {
    console.log('Notas inválidas')
  }
}

// 8 - Crie uma função que receba como parâmetros 4 valores numéricos, calcule o quadrado de cada um, some todos e mostre o resultado.

function crazyCalculation(n1, n2, n3, n4) {
  const crazyNumbers = [n1 ** 2, n2 ** 2, n3 ** 2, n4 ** 2]
  let result = 0
  for(let n of crazyNumbers) {
    result += n
  }
  console.log('A soma dos quadrados dos números é -> ' + result)
}

// 9 - Crie uma função que receba como parâmetros 4 valores números, calcule o quadrado de cada um, Se o valor resultante do quadrado do terceiro for >= 1000, imprima-o e finalize. Caso contrário, imprima os valores lidos e seus respectivos quadrados.

function crazyCalculation2(n1, n2, n3, n4) {
  const crazyNumbers = [n1 ** 2, n2 ** 2, n3 ** 2, n4 ** 2]
  if (crazyNumbers[2] >= 1000) {
    console.log('Terceiro valor -> ' + crazyNumbers[2])
  } else {
    console.log('Valor 1 -> ' + n1 + '**2 = ' + crazyNumbers[0])
    console.log('Valor 2 -> ' + n2 + '**2 = ' + crazyNumbers[1])
    console.log('Valor 3 -> ' + n3 + '**2 = ' + crazyNumbers[2])
    console.log('Valor 4 -> ' + n4 + '**2 = ' + crazyNumbers[3])
  }
}

// 10 - Crie uma função que receba um número inteiro como parâmetro e mostre uma mensagem indicando se este número é par ou ímpar, e se é positivo ou negativo.

function crazyCheck(n) {
  if (n % 2 === 0) {
    if (n >= 0) {
      console.log('Este número é par e positivo!')
    } else {
      console.log('Este número é par e negativo!')
    }
  } else {
    if (n >= 0) {
      console.log('Este número é ímpar e positivo!')
    } else {
      console.log('Este número é ímpar e negativo!')
    }
  }
}

// 11 - Crie uma função que receba como parâmetro o nome e a idade de um nadador. Exiba o nome dele e sua classificação de acordo com as seguintes categorias:
// Infantil A = 5 a 7 anos
// Infantil B = 8 a 11 anos
// Juvenil A = 12 a 13 anos
// Juvenil B = 14 a 17 anos
// Adultos = Maiores de 18 anos

function swimmerClassification(nome, idade) {
  if (idade >= 0 && idade <= 4) {
    console.log(nome + ' ainda não tem idade para praticar natação!')
  } else if (idade <=5 && idade <= 7) {
    console.log(nome + ' está classificado como Infantil A')
  } else if (idade >= 8 && idade <= 11) {
    console.log(nome + ' está classificado como Infantil B')
  } else if (idade >=12 && idade <= 13) {
    console.log(nome + ' está classificado como Juvenil A')
  } else if (idade >=14 && idade <= 17) {
    console.log(nome + ' está classificado como Juvenil B')
  } else {
    console.log(nome + ' está classificado como Adultos')
  }
}

// Mago SUPREMO
// 13 - Faça um programa que, dado um conjunto de N números, determine o menor valor, o maior valor e a soma dos valores.

function minMaxSum(...numbers) {
  const max = Math.max(...numbers);
  const min = Math.min(...numbers);
  const sum = numbers.reduce((current, accumulate) => current + accumulate);
  console.log('Maior valor - > ' + max)
  console.log('Menor valor - > ' + min)
  console.log('Soma dos valores - > ' + sum)
}

// 14- Altere o programa anterior para que ele aceite apenas números entre 0 e 1000

function minMaxSum2(...numbers) {
  const verifyNumbers = numbers.some(n => n < 0 || n > 1000)
  if (!verifyNumbers) {
    const max = Math.max(...numbers);
    const min = Math.min(...numbers);
    const sum = numbers.reduce((current, accumulate) => current + accumulate);
    console.log('Maior valor - > ' + max)
    console.log('Menor valor - > ' + min)
    console.log('Soma dos valores - > ' + sum)
  } else {
    console.log('Valores menores que zero ou maiores que 1000 não são permitidos')
  }
}

// 15 - Faça um script que leia um número e exiba o dia correspondente da semana. (1-Domingo, 2- Segunda, etc.), se digitar outro valor deve aparecer valor inválido.

function dayOfTheWeek(dayNumber) {
  const tableDays = {
    1: 'Domingo',
    2: 'Segunda',
    3: 'Terça',
    4: 'Quarta',
    5: 'Quinta',
    6: 'Sexta',
    7: 'Sábado',
  }

  console.log(`Hoje é ${tableDays[dayNumber]}, tenha um lindo dia! 🐸`)
}
