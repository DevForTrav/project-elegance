import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-container"
export default class extends Controller {
  static targets = ["container"]

  connect() {
  }

  toggleForm(event) {
    const formId = event.currentTarget.dataset.formId;
    const allForms = this.targets.findAll("container")
    const formToToggle = allForms.find(form => form.dataset.formId === formId)
  
    if (formToToggle && formToToggle.classList.contains("hidden")) {
      this.openForm(formToToggle);
    } else {
      this.dismissForm(formToToggle);
    }
  }
  
  openForm(formToToggle) {
    formToToggle.classList.remove("hidden")
  }

  dismissForm(formToToggle) {
    formToToggle.classList.add("hidden");
  }
}
