import { Controller } from "@hotwired/stimulus"
import { leave, toggle } from "el-transition"

// Connects to data-controller="image-handler"
export default class extends Controller {
  static targets = ["image", "imageModal"]

  connect() {
  }

  expand() {

    toggle(this.imageModalTarget)
    this.imageModalTarget.classList.add("flex")
  }

  hide() {
    leave(this.imageModalTarget)  
  }
}
