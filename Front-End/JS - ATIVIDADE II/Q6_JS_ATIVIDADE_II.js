// APRENDIZ DE MAGO
// 6 - Crie uma função que receba 2 valores inteiros (início e fim) e imprime os
// valores de início até fim. Caso o valor de fim for menor ou igual ao início, mostrar
// uma mensagem de erro, valores inválidos.

function printNumbers(start, end) {
  if (end <= start) {
    console.log('O número final não pode ser menor ou igual ao número inicial');
  } else {
    for (let i = start; i <= end; i += 1) {
      console.log(i);
    }
  }
}

// Test

printNumbers(1, 3);
// 1
// 2
// 3

printNumbers(3, 1);
// O número final não pode ser menor ou igual ao número inicial
