import { LightningElement } from 'lwc';

export default class AtividadeFinalLWC extends LightningElement {
  // 01
  // fonte: https://blog.empresometro.com.br/confira-o-ranking-das-100-maiores-empresas-do-mundo/
  listaDeEmpresas = [
    {cod:1, nome:'ICBC', local:'China', valor: '249 bilhões'},
    {cod:2, nome:'JPMorgan Chase', local:'Estados Unidos', valor: '464 bilhões'},
    {cod:3, nome:'Berkshire Hathaway', local:'Estados Unidos', valor: '624 bilhões'},
    {cod:4, nome:'China Construction Bank', local:'China', valor: '210 bilhões'},
    {cod:5, nome:'Saudi Arabian Oil Company (Saudi Aramco)', local:'Arábia Saudita', valor: '1897 bilhões'},
    {cod:6, nome:'Apple', local:'Estados Unidos', valor: '2252 bilhões'},
    {cod:7, nome:'Bank of America', local:'Estados Unidos', valor: '336 bilhões'},
    {cod:8, nome:'Ping An Insurance Group', local:'China', valor: '211 bilhões'},
    {cod:9, nome:'Agricultural Bank of China', local:'China', valor: '140 bilhões'},
    {cod:10, nome:'Amazon', local:'Estados Unidos', valor: '1711 bilhões'},
    {cod:11, nome:'Samsung Electronics', local:'Coreia do Sul', valor: '510 bilhões'},
    {cod:12, nome:'Toyota Motor', local:'Japão', valor: '219 bilhões'},
    {cod:13, nome:'Alphabet', local:'Estados Unidos', valor: '1538 bilhões'},
    {cod:14, nome:'Bank of China', local:'China', valor: '116 bilhões'},
    {cod:15, nome:'Microsoft', local:'Estados Unidos', valor: '1966 bilhões'}
  ];

  columns = [
    {label: 'Cod', fieldName:  'cod'},
    {label: 'Nome', fieldName: 'nome'},
    {label: 'Localização', fieldName:  'local'},
    {label: 'Valor', fieldName:  'valor'}
  ];

  //02
  contador = 0

  incrementar() {
    this.contador++
  }

  decrementar() {
    this.contador--
  }

  //03
  nome = ''
  salario = 0
  simulacao = 'Clique em Simular'

  simular() { 
    if (this.salario > 0) {
      this.simulacao = `${this.nome}, o valor recebido no ano (12 meses + 13º) será de R$${this.salario * 13} e o valor das férias será de R$${(Number(this.salario) + Number(this.salario / 3)).toFixed(2)}`
    } else {
      alert('Valor inválido')
    }
  }

  handleInputChange({target}){
    this[target.name] = target.value
  }
}