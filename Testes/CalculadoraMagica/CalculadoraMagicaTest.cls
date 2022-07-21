@isTest
public class CalculadoraMagicaTest {
    @isTest
    public static void CalcMagTest() {
               
        // Tests
        // Soma (método ¨Static¨, chama direto pela classe CalculadoraMagica, sem instanciar!)
        integer soma = CalculadoraMagica.somar(2, 2);
        System.assertEquals(4, soma, 'A soma está errada');  
        
        // Criar instância
        CalculadoraMagica calcTest = new CalculadoraMagica();
        
        // Subtração
        integer subtrai = calcTest.subtrair(6, 2);
        System.assertEquals(4, subtrai, 'A subtração está errada'); 
        
        // Divisão
        integer divide = calcTest.dividir(16, 4);
        System.assertEquals(4, divide, 'A divisão está errada'); 
        
        // Multiplicação
        integer multiplica = calcTest.multiplicar(2, 2);
        System.assertEquals(4, multiplica, 'A multiplicação está errada'); 
        
        // Quadrado de A
        integer quadA = calcTest.quadradoDeA(2, 0);
        System.assertEquals(4, quadA, 'O quadrado de A está errado');
        
        // Quadrado de B
        integer quadB = calcTest.quadradoDeB(0, 2);
        System.assertEquals(4, quadB, 'O quadrado de B está errado');
        
        // Verificação se A é maior que B
        string aMaiorTrue = calcTest.aMaior(4, 2);
        System.assertEquals('A é maior que B', aMaiorTrue, 'A não é maior que B');
        string aMaiorFalse = calcTest.aMaior(2, 4);
        System.assertEquals('A não é maior que B', aMaiorFalse, 'A é maior que B');
        
        // Média
        integer media = calcTest.media(6, 2);
        System.assertEquals(4, media, 'A média está errada!');
    }    
}