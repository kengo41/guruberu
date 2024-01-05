import { Controller } from "@hotwired/stimulus"

shopId = null;

export default class extends Controller {
  static targets = ["myModal", "backGround"]

  connect() {
    const bookmarkButtons = document.getElementsByClassName("bookmark-icon");

    for (const bookmarkButton of bookmarkButtons) {
      bookmarkButton.addEventListener("click", this.buttonClick);
    }
  }

  open() {
    this.myModalTarget.classList.remove('hidden');
  }

  close(event) {
    const clickedList = event.currentTarget;
    const listId = clickedList.getAttribute("data-list-id");

    if (shopId && listId) {
      const csrfToken = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

      fetch(`/bookmarks?shop_id=${shopId}&list_id=${listId}`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': csrfToken,
        },
      })
      .then(response => {
        if (response.ok) {
          return response.json();
        } else {
          throw new Error('サーバーエラー');
        }
      })
      .then(data => {
        if (data.success) {
          this.setFlashMessage("success", `${data.name}へ保存しました`);
          this.updateBookmarkButton();
        } else {
          this.setFlashMessage("error", `すでに保存しています`);
        }
      })
      .catch(error => {
        console.error("リクエストエラー", error);
        this.setFlashMessage("error", "リクエストエラーが発生しました");
      });
    }
    this.backGroundTarget.classList.add("hidden");
  }

  closeModal() {
    this.backGroundTarget.classList.add("hidden");
  }

  buttonClick(event) {
    const clickedButton = event.currentTarget;
    shopId = clickedButton.getAttribute("data-shop-id");
  }

  closeBackground(event) {
    if(event.target === this.backGroundTarget) {
      this.closeModal();
    }
  }

  setFlashMessage(type, message) {
    const flashContainer = document.createElement("div");
    flashContainer.classList.add("flex", "items-center", "text-white", "text-xs", "md:text-sm", "font-bold", "pl-10", "py-5");

    if (type === "success") {
      flashContainer.classList.add("bg-green-400");
    } else if (type === "error") {
      flashContainer.classList.add("bg-red-400");
    }

    flashContainer.textContent = message;

    const flashContainerElement = document.getElementById("flash");

    if (flashContainerElement) {
      flashContainerElement.appendChild(flashContainer);
      flashContainer.scrollIntoView({ behavior: 'smooth', block: 'start' });
      setTimeout(() => {
        flashContainerElement.removeChild(flashContainer);
      }, 5000)
    }
  }

  updateBookmarkButton() {
    const bookmarkButton = document.querySelector(`.bookmark-icon[data-shop-id="${shopId}"]`);
    bookmarkButton.innerHTML = '<i class="fa-solid fa-bookmark w-14 h-8"></i>';
  }
}