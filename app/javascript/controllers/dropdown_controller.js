import { Controller } from "@hotwired/stimulus"
import { leave, toggle } from "el-transition"

// Connects to data-controller="dropdown"
export default class extends Controller {

  // TODO: There's a small bug where the component preview dropdown is expanded when the image is expanded since the expanded image div is nested within component div

  static targets = ["button", "menu", "caret"]
  
  connect() {
    this.uniqueId = this.data.get("id") || Math.random().toString(36).substring(7);
  }

  toggle() {
    toggle(this.menuTarget)
    if (this.hasCaretTarget) {
      this.caretTarget.classList.toggle("rotate-180")      
    } 
  }

  hide(event) {
    
    const buttonClicked = this.menuTarget.contains(event.target)

    if (!buttonClicked && this.menuTarget.classList.contains("hidden")) {
      leave(this.menuTarget)
    }
  }
}
