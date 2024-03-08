import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash-messages"
export default class extends Controller {
  static targets = ["message"]
  connect() {
    this.hideMessageAfterDelay()
  }

  hideMessageAfterDelay() {
    this.messageTargets.forEach((element) => {
      setTimeout(() => {
        element.style.display = 'none';
      }, 3000);
    });
  }
  
}
