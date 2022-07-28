// Mago SUPREMO
// 15 - Faça um script que leia um número e exiba o dia correspondente da semana.
// (1-Domingo, 2- Segunda, etc.), se digitar outro valor deve aparecer valor inválido.

function dayOfTheWeek(dayNumber) {
  const tableDays = {
    1: 'Domingo',
    2: 'Segunda',
    3: 'Terça',
    4: 'Quarta',
    5: 'Quinta',
    6: 'Sexta',
    7: 'Sábado',
  };

  if (tableDays[dayNumber] !== undefined) {
    console.log(`Hoje é ${tableDays[dayNumber]}, tenha um lindo dia! 🐸`);
  } else {
    console.log('Valor inválido!');
  }
}

// Test

dayOfTheWeek(1);
// Hoje é Domingo, tenha um lindo dia! 🐸

dayOfTheWeek(4);
// Hoje é Quarta, tenha um lindo dia! 🐸

dayOfTheWeek(7);
// Hoje é Sábado, tenha um lindo dia! 🐸

dayOfTheWeek(8);
// Valor inválido!
