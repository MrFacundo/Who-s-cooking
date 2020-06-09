

const initInput = () => {
  const selectElement = document.querySelectorAll(".event-input");
  console.log(selectElement);
    selectElement.forEach((element) => {
        element.addEventListener('click', (event) => {
            const box = document.querySelector("#order_item_quantity");
            box.style.opacity = "1";
        }); 
    })
}
export { initInput } 
