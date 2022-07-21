public class Pizzaria {
    public string pedido(string pizza) {
        if (pizza == 'Calabresa'){
            return 'Pizza de Calabresa, valor R$45,00';
        } else if (pizza == '4 Queijos'){
            return 'Pizza 4 Queijos, valor R$50,00';
        } else if (pizza == 'Maria Bonita'){
            return 'Pizza Maria Bonita, valor R$60,00';
        } else {
            return 'Não possuímos essa pizza';
        }
    }
}