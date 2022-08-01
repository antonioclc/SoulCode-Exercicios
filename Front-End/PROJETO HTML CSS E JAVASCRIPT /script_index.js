/* eslint-disable no-alert */
// eslint-disable-next-line no-unused-vars
function mostrarCadastro() {
  // eslint-disable-next-line no-alert
  const nome = document.getElementById('nome');
  const cpf = document.getElementById('cpf');
  const telefone = document.getElementById('telefone');
  const email = document.getElementById('email');

  function verificarEmail(emailAVerificar) {
    return /\w+@\w+\.\w+/g.test(emailAVerificar);
  }

  // VERIFICA NOME
  if (nome.value.length <= 3) {
    alert('Nome tem que ter mais de 3 caracteres');
    // VERIFICA CPF
  } else if (cpf.value.length !== 11) {
    alert('CPF tem que ter 11 números');
    // VERIFICA TELEFONE
  } else if (telefone.value.length <= 8) {
    alert('Telefone tem que ter mais de 8 caracteres');
    // VERIFICA EMAIL
  } else if (!verificarEmail(email.value)) {
    alert('Email inválido!');
    // SE TUDO TIVER CERTO, EXIBE A MENSAGEM DE CADASTRO E RESETA TODOS OS CAMPOS
  } else {
    alert('seu cadastro foi realizado com sucesso, em breve entraremos em contato com você');
    nome.value = '';
    cpf.value = '';
    telefone.value = '';
    email.value = '';
  }
}
