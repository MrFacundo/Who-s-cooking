

const initInput = () => {
  const selectElement = document.querySelectorAll(".event-input");

    selectElement.forEach((element) => {
        element.addEventListener('click', (event) => {
            let box = event.currentTarget.querySelector("#order_item_quantity");
            box.style.opacity = "1";
        }); 
    })
}
export { initInput } 
