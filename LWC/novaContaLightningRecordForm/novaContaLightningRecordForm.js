import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import ACCOUNT_OBJECT from "@salesforce/schema/Account";
import NAME_FIELD from "@salesforce/schema/Account.Name";
import PHONE_FIELD from "@salesforce/schema/Account.Phone";
import ANNUALREVENUE_FIELD from "@salesforce/schema/Account.AnnualRevenue";

export default class NovaContaLightningRecordForm extends LightningElement {
  objectApiName = ACCOUNT_OBJECT;
  fields = [NAME_FIELD, PHONE_FIELD, ANNUALREVENUE_FIELD];

  handleSuccess(event) {
    this.dispatchEvent(new ShowToastEvent({
      title: 'Conta criada com sucesso!',
      message: 'Conta criada: ' + event.details.id,
      variant: 'success'
    }))
  }
}