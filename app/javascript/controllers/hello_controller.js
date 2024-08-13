import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("conected")
    //this.element.textContent = "Hello World!"
  }
}
