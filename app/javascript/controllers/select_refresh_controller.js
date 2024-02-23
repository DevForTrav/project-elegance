import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="select-refresh"
export default class extends Controller {
  // static values = { url: String }
  static targets = ["select"]

  refresh() {
    const wiringHarnessId = this.selectTarget.value
    const frame = document.getElementById("form-connectors-frame")

    frame.src = `/circuits/form_connectors?wiring_harness_id=${wiringHarnessId}&format=turbo_stream`
    Turbo.visit(frame.src, { action: 'replace' })
  }
}
