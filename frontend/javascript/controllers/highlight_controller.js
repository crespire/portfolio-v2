import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    animationSeconds: { type: Number, default: 1 }
  }
  static targets = ['contact']
  static classes = ['animate']

  animate() {
    this.contactTarget.classList.add(this.animateClass);
    setTimeout(() => {
      this.contactTarget.classList.remove(this.animateClass);
    }, this.animationSecondsValue * 1000);
  }
}
