// app/javascript/controllers/confirm_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "borrowButton", "message" ]

  confirm(event) {
    if (!confirm('Are you sure you want to borrow this accessory?')) {
      event.preventDefault();
    } else {
      this.messageTarget.innerHTML = `
        <strong>Yay!</strong> 🎉 you successfully signed in to our service.
        <a data-bs-dismiss="alert" aria-label="Close">
          <i class="fas fa-times"></i>
        </a>
      `;
      this.messageTarget.classList.remove('d-none');
    }
  }
}
