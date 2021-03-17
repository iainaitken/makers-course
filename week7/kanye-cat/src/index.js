let quotesDiv = document.getElementById("kanye-quote")
let catButton = document.getElementById("find-cat-pic")
let catDiv = document.getElementById("cat-pic")

fetch('https://api.kanye.rest')
.then(result => result.json())
.then(quote => {
  let newQuote = document.createElement('p')
  newQuote.textContent = quote.quote;
  quotesDiv.appendChild(newQuote);
})

catButton.addEventListener("click", event => {
  fetch('https://api.thecatapi.com/v1/images/search')
  .then(result => result.json())
  .then(cats => {
    cats.forEach(cat => {
      catDiv.innerHTML = `<img src="${cat.url}"/>`
    })
  })
})

