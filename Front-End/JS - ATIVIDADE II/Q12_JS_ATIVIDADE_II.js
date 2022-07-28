// Mago SUPREMO
// 12 - Faça um programa que, dado um conjunto de N números, determine o menor valor,
// o maior valor e a soma dos valores.

function minMaxSum(...numbers) {
  const max = Math.max(...numbers);
  const min = Math.min(...numbers);
  const sum = numbers.reduce((current, accumulate) => current + accumulate);

  console.log(`Maior valor - > ${max}`);
  console.log(`Menor valor - > ${min}`);
  console.log(`Soma dos valores - > ${sum}`);
}

// Test

minMaxSum(1, 2, 3);
// Maior valor - > 3
// Menor valor - > 1
// Soma dos valores - > 6

minMaxSum(1, 2, 3, 4, 5);
// Maior valor - > 5
// Menor valor - > 1
// Soma dos valores - > 15

minMaxSum(1, 2, 3, -2, -6);
// Maior valor - > 3
// Menor valor - > -6
// Soma dos valores - > -2
