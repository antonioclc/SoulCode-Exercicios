@isTest
public class PizzariaTest {
	@isTest
    public static void testPedido() {
        Pizzaria pizza = new Pizzaria();
        string test = pizza.pedido('Calabresa');
        System.assert(test == 'Pizza de Calabresa, valor R$45,00', 'Falha no teste, retorno do pedido diferente da pizza solicitada');
        test = pizza.pedido('4 Queijos');
        System.assert(test == 'Pizza 4 Queijos, valor R$50,00', 'Falha no teste, retorno do pedido diferente da pizza solicitada');
	test = pizza.pedido('Maria Bonita');
        System.assert(test == 'Pizza Maria Bonita, valor R$60,00', 'Falha no teste, retorno do pedido diferente da pizza solicitada');
	test = pizza.pedido('Pizza inexistente');
        System.assert(test == 'Não possuímos essa pizza', 'Falha no teste, retorno do pedido diferente da pizza solicitada');
    }
}
