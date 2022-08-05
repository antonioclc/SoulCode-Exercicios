({
  somar(component) {
    const num1 = component.get('v.num1');
    const num2 = component.get('v.num2');
    const operacao = Number(num1) + Number(num2);
    component.set('v.resultado', `${num1} + ${num2} = ${operacao}`);
  },
  subtrair(component, event, helper) {
    const num1 = component.get('v.num1');
    const num2 = component.get('v.num2');
    const operacao = num1 - num2;
    component.set('v.resultado', `${num1} - ${num2} = ${operacao}`);
  },
  dividir(component, event, helper) {
    const num1 = component.get('v.num1');
    const num2 = component.get('v.num2');
    const operacao = num1 / num2;
    component.set('v.resultado', `${num1} ÷ ${num2} = ${operacao}`);
  },
  multiplicar(component, event, helper) {
    const num1 = component.get('v.num1');
    const num2 = component.get('v.num2');
    const operacao = num1 * num2;
    component.set('v.resultado', `${num1} x ${num2} = ${operacao}`);
  },
  CparaF(component, event, helper) {
    const C = Number(component.get('v.tempA'));
    const F = C * 1.8 + 32;
    component.set('v.tempR', `${F}°F`);
  },
  CparaK(component, event, helper) {
    const C = Number(component.get('v.tempA'));
    const K = C + 273;
    component.set('v.tempR', `${K}K`);
  },
  calcularIMC(component, event, helper) {
    const peso = component.get('v.peso');
    const altura = component.get('v.altura');
    const calculo = peso / (altura ** 2);
    component.set('v.imc', calculo.toFixed(2));
  },
  handleInputChange(component, event, helper) {
    	const { name } = event.target;
    const { value } = event.target;
    component.set(`v.${name}`, value);
  },
});
