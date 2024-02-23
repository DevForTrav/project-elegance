import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="right-form-modal"
export default class extends Controller {
  static targets = ["formModal"]

  toggleForm() {
  
    if (this.formModalTarget && this.formModalTarget.classList.contains("hidden")) {
      this.openForm(this.formModalTarget);
    } else {
      this.dismissForm(this.formModalTarget);
    }
  }
  
  openForm(formToToggle) {
    formToToggle.classList.remove("hidden")
  }

  dismissForm(formToToggle) {
    formToToggle.classList.add("hidden");
  }
}
