import { LightningElement } from 'lwc';

export default class InputBasicLWC extends LightningElement {
  nome = 'Antônio';
  peso = 83; //kg
  altura = 1.89; //m
  imc = 0;

  CalcularIMC() {
    this.imc = this.peso / this.altura;
  }
}