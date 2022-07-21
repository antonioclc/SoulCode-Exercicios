public class CalculadoraMagica {
    //static -> Permite o uso do método sem instanciar (CalculadoraMagica.somar(1,2))
    public static integer somar(integer a, integer b) {
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