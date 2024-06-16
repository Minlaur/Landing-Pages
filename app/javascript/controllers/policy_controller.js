import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="policy"
export default class extends Controller {
  static targets = ["content"];

  connect() {
    console.log("policy controller connected");

  }
  // event.target.classList.remove("selected");

  loadPolicies(event) {

    const language = event.target.getAttribute('data-language');


    fetch(`/policies_${language}`)
      .then(response => response.text())
      .then(data => {
        this.contentTarget.innerHTML = data;
      })
      .catch(error => console.error('Error fetching policies:', error));

      // event.target.classList.toggle("selected");

  }

  loadPrivacy(event) {
    const language = event.target.getAttribute('data-language');
    fetch(`/privacy_${language}`)
      .then(response => response.text())
      .then(data => {
        this.contentTarget.innerHTML = data;
      })
      .catch(error => console.error('Error fetching policies:', error));
  }
}
