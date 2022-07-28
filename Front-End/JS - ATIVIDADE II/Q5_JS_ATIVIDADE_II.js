// APRENDIZ DE MAGO
// 5 - Crie uma função que receba 1 parâmetro de temperatura em Celsius. Calcule
// e mostre as temperaturas em Kelvin e Fahrenheit.

function temperatureConverter(C) {
  const F = C * 1.8 + 32;

  const K = C + 273;

  console.log(`${C}°C -> ${F}°F`);

  console.log(`${C}°C -> ${K}K`);
}

// Test

temperatureConverter(15);
// 15°C -> 59°F
// 15°C -> 288K
