const searchAlgoliaPlaces = (event) => {
  fetch("https://places-dsn.algolia.net/1/places/query", {
    method: "POST",
    body: JSON.stringify({ query: event.target.value })
  })
    .then(response => response.json())
    .then((data) => {
      console.log(event.target.value);
      console.log(data.hits); // Look at local_names.default
    });
};

const input = document.querySelector("#order_delivery_address");
input.addEventListener("keyup", searchAlgoliaPlaces);



export { searchAlgoliaPlaces };



