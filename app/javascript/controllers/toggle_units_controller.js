import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["unitInput", "convertToInput"];

  toggle() {
    const currentUnit = this.unitInputTarget.value;
    const newUnit = currentUnit === "px" ? "rem" : "px";

    // Atualiza os valores dos campos de entrada
    this.unitInputTarget.value = newUnit;
    this.convertToInputTarget.value = newUnit;
    
    // Submete o formulário após a alternância para aplicar a conversão
    this.element.querySelector('form').submit();
  }
}
