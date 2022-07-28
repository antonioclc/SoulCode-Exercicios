// MESTRE DOS MAGOS
// 9 - Crie uma função que receba como parâmetros 4 valores números, calcule o
// quadrado de cada um, Se o valor resultante do quadrado do terceiro for >= 1000,
// imprima-o e finalize. Caso contrário, imprima os valores lidos e seus respectivos quadrados.

function crazyCalculation(n1, n2, n3, n4) {
  const crazyNumbers = [n1 ** 2, n2 ** 2, n3 ** 2, n4 ** 2];

  if (crazyNumbers[2] >= 1000) {
    console.log(`Terceiro valor -> ${crazyNumbers[2]}`);
  } else {
    console.log(`Valor 1 -> ${n1}**2 = ${crazyNumbers[0]}`);

    console.log(`Valor 2 -> ${n2}**2 = ${crazyNumbers[1]}`);

    console.log(`Valor 3 -> ${n3}**2 = ${crazyNumbers[2]}`);

    console.log(`Valor 4 -> ${n4}**2 = ${crazyNumbers[3]}`);
  }
}

// Test

crazyCalculation(1, 2, 3, 4);
// Valor 1 -> 1**2 = 1
// Valor 2 -> 2**2 = 4
// Valor 3 -> 3**2 = 9
// Valor 4 -> 4**2 = 16

crazyCalculation(1, 2, 3000, 4);
// Terceiro valor -> 9000000
