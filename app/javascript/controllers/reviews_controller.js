import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["review", "form"]

  connect() {
    console.log("Hello Stimulus!")
  }

  send(e) {
    e.preventDefault()
    console.log("AJAX Reviews")
    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": csrfToken() },
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then(data => {
      if (data.inserted_item) {
        this.reviewTarget.insertAdjacentHTML("beforeend", data.inserted_item)
      }
    })
  }
}
