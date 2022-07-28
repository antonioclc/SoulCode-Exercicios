// APRENDIZ DE MAGO
// 3 -Crie um laço while que irá iterar enquanto n for menor ou igual a 5. Mostra
// no console os valores obtidos

function whileMaster(n) {
  while (n <= 5) {
    console.log(n);

    // eslint-disable-next-line no-param-reassign
    n += 1;
  }
}

// Test

whileMaster(2);
// 2
// 3
// 4
// 5
