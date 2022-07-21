// Apex I - TRABALHO DE REVISÃO - APEX

// 1

decimal c = 100;
decimal f;

f = ((c * 9) / 5) + 32;
    
System.debug(c + '°C' + ' = ' + f + '°F');

// 2

decimal precoDasMacas;
decimal totalAPagar;
integer quantidade = 7;

if (quantidade >= 12) {
    precoDasMacas = 1.00;
} else {
    precoDasMacas = 1.30;
}

totalAPagar = quantidade * precoDasMacas;

System.debug('Total a pagar R$' + totalAPagar);

// 3 

string nome = 'Fulano';
string sexo = 'F';
decimal altura = 1.80;
decimal pesoIdeal;
    
if (sexo == 'M') {
    pesoIdeal = (72.7 * altura) - 58;
} else {
    pesoIdeal = (62.1 * altura) - 44.7;
}

System.debug(nome + ' seu peso ideal é ' + pesoIdeal.format() + 'kg');

// 4

string timeCasa = 'Íbis';
string timeFora = 'Real Madrid';
integer golsCasa = 8;
integer golsFora = 0;

if (golsCasa == golsFora) {
    System.debug('EMPATE');
} else if (golsCasa > golsFora) {
    System.debug('VENCEDOR - ' + timeCasa);
} else {
    System.debug('VENCEDOR - ' + timeFora);
}

// 5

string tipoDeCombustivel = 'G';
integer litros = 10;
decimal precoG = 3.30;
decimal precoA = 2.90;
decimal precoTotal;

if (tipoDeCombustivel == 'G') {
    if (litros <= 20) {
        precoTotal = (litros * precoG) * 0.97;
    } else {
        precoTotal = (litros * precoG) * 0.95;
    }
} else {
    if (litros <= 20) {
        precoTotal = (litros * precoA) * 0.96;
    } else {
        precoTotal = (litros * precoA) * 0.94;
    }
}

System.debug('Preço total R$' + precoTotal.format());

// 6 

decimal nota1 = 7;
decimal nota2 = 8;
decimal nota3 = 7;
decimal mediaDosExercicios = 8;
decimal mediaDeAproveitamento = (((nota1 + nota2) * 2) + (nota3 * 3) + mediaDosExercicios) / 7;
    
if (mediaDeAproveitamento >= 9) {
    System.debug('Sua média de aproveitamento é ' + mediaDeAproveitamento.format() + ' - Conceito A');
} else if (mediaDeAproveitamento >= 7 && mediaDeAproveitamento < 9) {
    System.debug('Sua média de aproveitamento é ' + mediaDeAproveitamento.format() + ' - Conceito B');
} else if (mediaDeAproveitamento >= 6 && mediaDeAproveitamento < 7.5) {
    System.debug('Sua média de aproveitamento é ' + mediaDeAproveitamento.format() + ' - Conceito C');
} else {
    System.debug('Sua média de aproveitamento é ' + mediaDeAproveitamento.format() + ' - Conceito D');
}

// 7

integer x = 5;
integer y = 5;
integer z = 5;
string mens;

if (x < (y + z) && y < (x + z) && z < (x + y)) {
    if (x == y && y == z) {
        mens = 'Triângulo Equilátero';
    } else {
        if (x == y || y == z || x == z ) {
            mens = 'Triângulo Isósceles';
        } else {
            mens = 'Triângulo Escaleno';
        }
    }
} else {
    mens = 'Não é possível formar um triângulo';
}

System.debug(mens);

// 8
    
for (integer cont = 101, n = cont + 20; cont < n; cont++ ) {
    System.debug(cont);
}

// 9

for (integer cont2 = 1; cont2 <= 10; cont2++) {
    System.debug(cont2 + ' * 8 = ' + cont2 * 8);
}

// 10

string [] letras=new string[]{'A', 'B', 'C', 'D', 'E', 'F'};

System.debug(letras[5] + letras[0] + letras[2] + letras[0]);
System.debug(letras[1] + letras[0] + letras[1] + letras[0]);
System.debug(letras[5] + letras[0] + letras[3] + letras[0]);
System.debug(letras[0] + letras[2] + letras[0] + letras[1] + letras[0] + letras[3] + letras[0]);
