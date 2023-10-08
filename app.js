let openShopping = document.querySelector('.shopping');
let closeShopping = document.querySelector('.closeShopping');
let list = document.querySelector('.list');
let listCard = document.querySelector('.listCard');
let body = document.querySelector('body');
let total = document.querySelector('.total');
let quantity = document.querySelector('.quantity');

openShopping.addEventListener('click', ()=>{
    body.classList.add('active');
})
closeShopping.addEventListener('click', ()=>{
    body.classList.remove('active');
})

let products = [
    {
        id: 1,
        name: "Assassin's Creed Valhalla",
        image: 'AC.jpg',
        price: 24.99
    },
    {
        id: 2,
        name: 'Detroit Become Human',
        image: 'detroit.png',
        price: 29.99
    },
    {
        id: 3,
        name: 'The Rise of Tomb Raider',
        image: 'TombRaider.png',
        price: 10.00
    },
    {
        id: 4,
        name: 'Terraria',
        image: 'Terraria.PNG',
        price: 46.77
    },
    {
        id: 5,
        name: 'The Legend of Zelda: Tears of The Kingdom',
        image: 'zelda.PNG',
        price: 59.99
    },
    {
        id: 6,
        name: 'Animal Crossing',
        image: 'animal.jpeg',
        price: 19.99
    },
    {
        id: 7,
        name: 'Ratchet & Clank',
        image: 'Ratchet.PNG',
        price: 12.99
    },
    {
        id: 7,
        name: "Marvel's Spider-Man",
        image: 'SpiderMan.PNG',
        price: 26.84
    },
    {
        id: 7,
        name: 'The Last Of Us: Part I',
        image: 'TheLast.PNG',
        price: 9.99
    },
];
let listCards  = [];
function initApp() {
    products.forEach((value, key) => {
      let newDiv = document.createElement('div');
      newDiv.classList.add('item');
      newDiv.innerHTML = `
        <img src="image/${value.image}">
        <div class="title">${value.name}</div>
        <div class="price">€${value.price.toLocaleString()}</div>
        <button onclick="addToCard(${key})">Add To Card</button>`;
      list.appendChild(newDiv);
    });
  }
  
initApp();
function addToCard(key){
    if(listCards[key] == null){
        // copy product form list to list card
        listCards[key] = JSON.parse(JSON.stringify(products[key]));
        listCards[key].quantity = 1;
    } else {
        listCards[key].quantity += 1;
    }
    reloadCard();
}
function reloadCard(){
    listCard.innerHTML = '';
    let count = 0;
    let totalPrice = 0;
    listCards.forEach((value, key)=>{
        totalPrice = totalPrice + value.price;
        count = count + value.quantity;
        if(value != null){
            let newDiv = document.createElement('li');
            newDiv.innerHTML = `
                <div><img src="image/${value.image}"/></div>
                <div>${value.name}</div>
          <div>${value.price.toLocaleString('en-US', { style: 'currency', currency: 'EUR' })}</div>
          <div>
          <button onclick="changeQuantity(${key}, ${parseInt(value.quantity) - 1})">-</button>
          <div class="count">${value.quantity}</div>
          <button onclick="changeQuantity(${key}, ${parseInt(value.quantity) + 1})">+</button>
          </div>`;
        listCard.appendChild(newDiv);
      }
    });
    total.innerText = totalPrice.toLocaleString('en-US', { style: 'currency', currency: 'EUR' });
    quantity.innerText = count;
  }
  
function changeQuantity(key, quantity) {
    if (quantity == 0) {
      delete listCards[key];
    }else{
        listCards[key].quantity = quantity;
        listCards[key].price = quantity * products[key].price;
    }
    reloadCard();
}