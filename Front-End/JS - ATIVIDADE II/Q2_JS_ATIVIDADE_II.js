// APRENDIZ DE MAGO
// 2 - Faça um programa que leia 5 números e informe a soma e a média dos números.

function sumAndAverageNumbers(n1, n2, n3, n4, n5) {
  console.log(`Soma dos números -> ${n1 + n2 + n3 + n4 + n5}`);

  console.log(`Média dos números -> ${((n1 + n2 + n3 + n4 + n5) / 5).toFixed(2)}`);
}

// Test

sumAndAverageNumbers(1, 2, 3, 4, 5);
// Soma dos números -> 15
// Média dos números -> 3.00
