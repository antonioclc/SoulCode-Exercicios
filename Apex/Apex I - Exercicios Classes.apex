// Apex I - Exercicios Classes
// 1
System.debug('🐈🐈🐈 QUESTÃO 1 🐈🐈🐈');

Gato gatinho = new Gato();

gatinho.nome = 'Jujuba';
gatinho.raca = 'Sphynx';
gatinho.peso = 3;

gatinho.miar();
gatinho.andar();
gatinho.roronar();
gatinho.infoGato();

// 2
System.debug('🍕🍕🍕 QUESTÃO 2 🍕🍕🍕');

Pizzaria pizza = new Pizzaria();
pizza.pedir('Calabresa');
pizza.pedir('4 Queijos');
pizza.pedir('Maria Bonita');
pizza.pedir('Cogumelo');

// 3
System.debug('🧠🧠🧠️ QUESTÃO 3 🧠🧠🧠');
CalculadoraMagica calculadora = new CalculadoraMagica();
System.debug(calculadora.somar(2, 2)); // 4
System.debug(calculadora.subtrair(6, 2)); // 4
System.debug(calculadora.dividir(6, 3)); // 2
System.debug(calculadora.multiplicar(3, 3)); // 9
System.debug(calculadora.quadradoDeA(2, 4)); // 4
System.debug(calculadora.quadradoDeB(2, 4)); // 16
System.debug(calculadora.aMaior(4, 2)); // Sim
System.debug(calculadora.aMaior(2, 4)); // Não
System.debug(calculadora.media(5, 15)); // 10

/* 

🐈 CLASSE GATO 🐈

public class Gato {
	public string nome, raca;
    public decimal peso;
    
    public void miar(){
        System.debug(nome + ' disse: MIAAAAAAUUUUUUUUU');
    }    
    
    public void andar(){
        System.debug(nome + ' está andando');
    }
    
    public void roronar(){
        System.debug(nome + ' está roronando');
    }
    
    public void infoGato(){
        System.debug('Nome: ' + nome);
        System.debug('Peso: ' + peso);
        System.debug('Raça: ' + raca);
    }
}

🍕 CLASSE PIZZARIA 🍕

public class Pizzaria {

    public void pedir(string pizza) {
        if (pizza == 'Calabresa'){
            System.debug('Pizza de Calabresa, valor R$45,00');
        } else if (pizza == '4 Queijos'){
            System.debug('Pizza 4 Queijos, valor R$50,00');
        } else if (pizza == 'Maria Bonita'){
            System.debug('Pizza Maria Bonita, valor R$60,00');
        } else {
            System.debug('Não possuímos essa pizza');
        }
    }
}

🧠 CLASSE CALCULADORA MÁGICA 🧠

public class CalculadoraMagica {
    
    public integer somar(integer a, integer b) {
        return a + b;
    }
    
    public integer subtrair(integer a, integer b) {
        return a - b;
    }
    
    public integer dividir(integer a, integer b) {
        return a / b;
    }
    
    public integer multiplicar(integer a, integer b) {
        return a * b;
    }
    
    public integer quadradoDeA(integer a, integer b) {
        return a * a;
    }
    
    public integer quadradoDeB(integer a, integer b) {
        return b * b;
    }
    
    public string aMaior(integer a, integer b) {
        if ( a > b) {
            return 'A é maior que B';
        } else {
            return 'A não é maior que B';
        }
    }
    
    public integer media(integer a, integer b) {
        return (a + b) / 2;
    }
        
}

*/
