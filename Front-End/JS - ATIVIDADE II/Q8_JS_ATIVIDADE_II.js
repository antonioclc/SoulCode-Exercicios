// MESTRE DOS MAGOS
// 8 - Crie uma função que receba como parâmetros 4 valores numéricos, calcule o
// quadrado de cada um, some todos e mostre o resultado.

function crazyCalculation(n1, n2, n3, n4) {
  const crazyNumbers = [n1 ** 2, n2 ** 2, n3 ** 2, n4 ** 2];

  let result = 0;

  for (const n of crazyNumbers) {
    result += n;
  }

  console.log(`A soma dos quadrados dos números é -> ${result}`);
}

// Test

crazyCalculation(1, 2, 3, 4);
// A soma dos quadrados dos números é -> 30
