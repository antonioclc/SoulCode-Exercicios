// MESTRE DOS MAGOS
// 10 - Crie uma função que receba um número inteiro como parâmetro e mostre uma
// mensagem indicando se este número é par ou ímpar, e se é positivo ou negativo.

function crazyCheck(n) {
  if (n % 2 === 0) {
    if (n >= 0) {
      console.log('Este número é par e positivo!');
    } else {
      console.log('Este número é par e negativo!');
    }
  } else if (n >= 0) {
    console.log('Este número é ímpar e positivo!');
  } else {
    console.log('Este número é ímpar e negativo!');
  }
}

// Test

crazyCheck(1);
// Este número é ímpar e positivo!

crazyCheck(2);
// Este número é par e positivo!

crazyCheck(-1);
// Este número é ímpar e negativo!

crazyCheck(-2);
// Este número é par e negativo!
