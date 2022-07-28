// MESTRE DOS MAGOS
// 7 - Crie uma função que recebe como parâmetros nome, nota1, nota2 e nota3.
// Se as 3 notas do aluno estiverem no intervalo de 0 a 10, calcular a média,
// mostrar o nome do aluno e se está aprovado ou não (média 6). Senão exibir notas inválidas.

function studentResult(nome, nota1, nota2, nota3) {
  const verifyGrades = nota1 >= 0 && nota1 <= 10
  && nota2 >= 0 && nota2 <= 10
  && nota3 >= 0 && nota3 <= 10;

  if (verifyGrades) {
    const average = (nota1 + nota2 + nota3) / 3;

    if (average >= 6) {
      console.log(`Parabéns ${nome}, você está aprovado!`);
    } else {
      console.log(`Que pena ${nome}, você está reprovado!`);
    }
  } else {
    console.log('Notas inválidas');
  }
}

// Test

studentResult('Antônio', 7, 8, 9);
// Parabéns Antônio, você está aprovado!

studentResult('Antônio', 7, 8, 0);
// Que pena Antônio, você está reprovado!

studentResult('Antônio', 7, 8, 20);
// Notas inválidas
