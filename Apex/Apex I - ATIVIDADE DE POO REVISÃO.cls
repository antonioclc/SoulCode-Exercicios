// Apex I - ATIVIDADE DE POO REVISÃO
// 1 

public class Contador {

    private integer contador = 0;
    
    public void get() {
        System.debug('Contador = ' + contador);
    }
    
    public void inc() {
        contador++;
    }
    
    public void decZero() {
        contador = 0;
    }
}

// Teste

Contador c = new Contador();

c.get();
c.inc();
c.get();
c.inc();
c.get();
c.decZero();
c.get();

// 2

public class Alunos {

    public string nome;
    public integer matricula;
    public decimal nota1;
    public decimal nota2;
    public decimal notaTrabalho;
    public decimal mediaFinal;
    
    public decimal mediaFinal() {
        mediaFinal =  (nota1 + nota2 + notaTrabalho) / 3;
        return mediaFinal;
    }
    
    public decimal atingiuMedia() {
        if (mediaFinal >= 7) {
            return 0;
        } else {
            return 7 - mediaFinal;
        }
    }
}

// Teste

Alunos a = new Alunos();

a.nota1 = 9;
a.nota2 = 8;
a.notaTrabalho = 5;

system.debug(a.mediaFinal().setScale(1));
system.debug(a.atingiuMedia().setScale(1));

// 3

public class Pessoa {
	
    private string nome;
    private date dataDeNascimento;
    private decimal altura;
    
    public void getNome() {
        System.debug('Nome: ' + nome);
    }
    
    public void getData() {
        System.debug('Data de nascimento: ' + dataDeNascimento);
    }
    
    public void getAltura() {
        System.debug('Altura: ' + altura);
    }
    
    public void setNome(string novoNome) {
        nome = novoNome;
    }
    
    public void setData(integer dia, integer mes, integer ano) {
        dataDeNascimento = Date.newInstance(ano, mes, dia);
    }
    
    public void setAltura(decimal novaAltura) {
        altura = novaAltura;
    }
    
    public void exibirDataNasc() {
        // Pegar dias entre data de nascimento e data de hoje e dividir por 365(quantidade de dias do ano).
        integer idade = dataDeNascimento.daysBetween(Date.today()) / 365;
        system.debug(nome + ' tem ' + idade + ' ano(s) de idade(s)');
    }    
}

// Teste

Pessoa p = new Pessoa();
p.setNome('Antônio');
p.setData(2,4,1991);
p.setAltura(1.80);
p.getNome();
p.getData();
p.getAltura();
p.exibirDataNasc();

// 4 

public class Data {
    
    private integer dia;
    private integer mes;
    private integer ano;
    
    public void getDia() {
        System.debug(dia);
    }
    
    public void getMes() {
        System.debug(mes);
    }
    
    public void getAno() {
        System.debug(ano);
    }
    
    public void setDia(integer novoDia) {
        if (novoDia >= 1 && novoDia <= 31) {
            dia = novoDia;
        } else {
            System.debug('Dia incorreto! Por favor digite um dia válido');
        }
    }
    
    public void setMes(integer novoMes) {
        if (novoMes >= 1 && novoMes <= 12) {
            mes = novoMes;
        } else {
            System.debug('Mês incorreto! Por favor digite um mês válido');
        }
    }
    
    public void setAno(integer novoAno) {
        if (novoAno >= 1990 && novoAno <= 2199) {
            ano = novoAno;
        } else {
            System.debug('Ano incorreto! Por favor digite um ano válido');
        }
    }
    
    public void setData(integer novoDia, integer novoMes, integer novoAno) {
        setDia(novoDia);
        setMes(novoMes);
        setAno(novoAno);
    }
    
    public void mostrarData() {
        System.debug('Data: ' + dia + ' - ' + mes + ' - ' + ano);
    }
}

// Teste

Data d = new Data();

d.setDia(27);
d.setMes(11);
d.setAno(2019);
d.getDia();
d.getMes();
d.getAno();
d.setData(2, 4, 1991);
d.mostrarData();
