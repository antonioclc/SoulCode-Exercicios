// Mago SUPREMO
// 13- Altere o programa anterior para que ele aceite apenas números entre 0 e 1000

function minMaxSum(...numbers) {
  const verifyNumbers = numbers.some((n) => n < 0 || n > 1000);

  if (!verifyNumbers) {
    const max = Math.max(...numbers);
    const min = Math.min(...numbers);
    const sum = numbers.reduce((current, accumulate) => current + accumulate);

    console.log(`Maior valor - > ${max}`);
    console.log(`Menor valor - > ${min}`);
    console.log(`Soma dos valores - > ${sum}`);
  } else {
    console.log('Valores menores que zero ou maiores que 1000 não são permitidos');
  }
}

// Test

minMaxSum(1, 2, 3, 4);
// Maior valor - > 4
// Menor valor - > 1
// Soma dos valores - > 10

minMaxSum(1, -2, 3, 4000);
// Valores menores que zero ou maiores que 1000 não são permitidos
