import { LightningElement } from 'lwc';

export default class InputObject extends LightningElement {

  pessoa = {
    primeironome: '',
    sobrenome: '',
    email: '',
    website: '',
    empresa: '',
  }

  handleInputChange({target}) {
    this.pessoa = {...this.pessoa, [target.name]: target.value}
  }
}