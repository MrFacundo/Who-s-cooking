const mainButtons = document.querySelectorAll('.main-button')

const addSelected = (event) => {
  console.log(event.currentTarget)
  mainButtons.forEach((button) => {
    button.classList.remove('selected')
  })
  event.currentTarget.classList.add('selected')
}

const initMainButton = () => {
  mainButtons.forEach((button) => {
    button.addEventListener('click', addSelected)
  })
/*   select Element which should change 
  add Event Listener to click
  check if active 
    true: stay 
    false remove from other button and add to currrent button */
}

export { initMainButton };