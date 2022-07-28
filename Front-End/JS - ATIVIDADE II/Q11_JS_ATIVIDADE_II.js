// MESTRE DOS MAGOS
// 11 - Crie uma função que receba como parâmetro o nome e a idade de um nadador.
// Exiba o nome dele e sua classificação de acordo com as seguintes categorias:

// Infantil A = 5 a 7 anos
// Infantil B = 8 a 11 anos
// Juvenil A = 12 a 13 anos
// Juvenil B = 14 a 17 anos
// Adultos = Maiores de 18 anos

function swimmerClassification(nome, idade) {
  if (idade >= 0 && idade <= 4) {
    console.log(`${nome} ainda não tem idade para praticar natação!`);
  } else if (idade >= 5 && idade <= 7) {
    console.log(`${nome} está classificado como Infantil A`);
  } else if (idade >= 8 && idade <= 11) {
    console.log(`${nome} está classificado como Infantil B`);
  } else if (idade >= 12 && idade <= 13) {
    console.log(`${nome} está classificado como Juvenil A`);
  } else if (idade >= 14 && idade <= 17) {
    console.log(`${nome} está classificado como Juvenil B`);
  } else {
    console.log(`${nome} está classificado como Adultos`);
  }
}

// Test

swimmerClassification('Antônio', 1);
// Antônio ainda não tem idade para praticar natação!

swimmerClassification('Antônio', 6);
// Antônio está classificado como Infantil A

swimmerClassification('Antônio', 9);
// Antônio está classificado como Infantil B

swimmerClassification('Antônio', 13);
// Antônio está classificado como Juvenil A

swimmerClassification('Antônio', 15);
// Antônio está classificado como Juvenil B

swimmerClassification('Antônio', 18);
// Antônio está classificado como Adultos
