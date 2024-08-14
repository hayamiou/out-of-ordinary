import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-price"
export default class extends Controller {
  static targets = ['input', 'totalPrice', 'startDate', 'endDate']
  static values = {
    price: Number
  }



  calculateTotalPrice(event) {
    const value = this.inputTarget.value
    const startTime = new Date(this.startDateTarget.value)
    const endTime = new Date(this.endDateTarget.value)
    const duration = (endTime - startTime)/ (1000 * 3600 * 24)
    const total = value * this.priceValue * duration
    this.totalPriceTarget.innerHTML = total
  }
}
