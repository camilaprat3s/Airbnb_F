// app/javascript/controllers/confirm_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "borrowButton", "message" ]

  connect() {
    this.borrowButtonTarget.addEventListener('ajax:success', () => {
      this.messageTarget.textContent = "Enjoy your rental!";
      this.messageTarget.classList.remove('d-none');
    });
  }
}
