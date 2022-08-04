import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import { createRecord } from 'lightning/uiRecordApi';
import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import NAME_FIELD from "@salesforce/schema/Account.Name";
import PHONE_FIELD from "@salesforce/schema/Account.Phone";
import ANNUALREVENUE_FIELD from "@salesforce/schema/Account.AnnualRevenue";

export default class NovaContaUiRecordApi extends LightningElement {
  fieldsClass = {
    Name: '',
    Phone: '',
    AnnualRevenue: 0,
  };

  handleInputChange({target}){
    this.fieldsClass = {
      ...this.fieldsClass, [target.name]:target.value
    };
  }

  handleOnClick(){
    const fields = {};
    fields[NAME_FIELD.fieldApiName] = this.fieldsClass.Name;
    fields[PHONE_FIELD.fieldApiName] = this.fieldsClass.Phone;
    fields[ANNUALREVENUE_FIELD.fieldApiName] = this.fieldsClass.AnnualRevenue;

    const recordInput = {
      apiName: ACCOUNT_OBJECT.objectApiName,
      fields
    }

    createRecord(recordInput).then(()=>{
      const sucesso = new ShowToastEvent({
        title:'Conta criada',
        message: 'Sua conta foi criada com sucesso',
        variant: 'success'
      });
      this.dispatchEvent(sucesso);
    }).catch((error)=>{
      const erro = new ShowToastEvent({
        title:'Falha ao Inserir a conta',
        message: error.body.message,
        variant: 'error'
      });
      this.dispatchEvent(erro);
    }
    )
  }
}