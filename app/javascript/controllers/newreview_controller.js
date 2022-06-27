import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "cancel"]

  connect() {
    console.log("Hello Stimulus")
  }

  show() {
    this.formTarget.classList.remove("d-none")
    this.cancelTarget.classList.remove("d-none")
  }

  hide() {
    this.formTarget.classList.add("d-none")
    this.cancelTarget.classList.add("d-none")
  }
}
