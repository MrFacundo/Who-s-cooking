const clickableTabs = () => {
  const choice = document.querySelectorAll('.cuisine-choice');
  choice.forEach((element) => {
    element.addEventListener("click", (event) => {
      event.currentTarget.classList.toggle("active");
    })
  })
};

export { clickableTabs };