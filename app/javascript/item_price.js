window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const addTaxDom = document.getElementById("add-tax-price");
    addTaxDom.innerHTML = priceInput.value * 0.1
    const profitDom = document.getElementById("profit");
    profitDom.innerHTML = priceInput.value - priceInput.value * 0.1
})
})