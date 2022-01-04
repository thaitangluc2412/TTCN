/**
 * 
 */
/**
 * 
 */

let productsInCart = JSON.parse(localStorage.getItem('shoppingCart'));
if (!productsInCart) {
    productsInCart = [];
}
const parentElement = document.querySelector('.add-to-cart-product');
const cartSumPrice = document.querySelector('#sum-prices');
const products = document.querySelectorAll('.functional-buttons');


const countTheSumPrice = function () { // 4
    let sum = 0;
    productsInCart.forEach(item => {
        sum += item.price;
    });
    return sum;
}

const updateShoppingCartHTML = function () {  // 3
    localStorage.setItem('shoppingCart', JSON.stringify(productsInCart));
    if (productsInCart.length > 0) {
        let result = productsInCart.map(product => {
            return `< div class="cart-product">
              <div class="cart-product-image">
                  <a href="single-product.html"> <img src="${product.image}"
                      alt="">
                  </a>
              </div>
              <div class="cart-product-info">
                  <p>
                       <a href="single-product.html">${product.name}}</a>
                  </p>
                  <span class="cart-price">${product.price}</span>
              </div>
              <div class="cart-product-remove">
                  <i class="fa fa-times"></i>
              </div>
          </div > `
         });
console.log("Hello1");
parentElement.innerHTML = result.join('');
document.querySelector('.cart-checkout').classList.remove('hidden');
cartSumPrice.innerHTML = countTheSumPrice();
 
     }
     else {
    console.log("Hello2");
    document.querySelector('.cart-checkout').classList.add('hidden');
    parentElement.innerHTML = '<h4 class="">Your shopping cart is empty</h4>';
    cartSumPrice.innerHTML = '';
}
 }

function updateProductsInCart(product) { // 2
    for (let i = 0; i < productsInCart.length; i++) {
        if (productsInCart[i].id == product.id) {
            productsInCart[i].count += 1;
            productsInCart[i].price = productsInCart[i].basePrice * productsInCart[i].count;
            return;
        }
    }
    productsInCart.push(product);
}

products.forEach(item => {   // 1
    item.addEventListener('click', (e) => {
        if (e.target.classList.contains('addToCart')) {
            console.log("kicked");
            const productID = e.target.dataset.productId;
            const productName = item.querySelector('.productName').innerHTML;
            const productPrice = item.querySelector('.priceValue').innerHTML;
            const productImage = item.querySelector('img').src;
            let product = {
                name: productName,
                image: productImage,
                id: productID,
                count: 1,
                price: +productPrice,
                basePrice: +productPrice,
            }
            updateProductsInCart(product);
            updateShoppingCartHTML();
        }

    });
});

//  parentElement.addEventListener('click', (e) => { // Last
//      const isPlusButton = e.target.classList.contains('button-plus');
//      const isMinusButton = e.target.classList.contains('button-minus');
//      if (isPlusButton || isMinusButton) {
//          for (let i = 0; i < productsInCart.length; i++) {
//              if (productsInCart[i].id == e.target.dataset.id) {
//                  if (isPlusButton) {
//                      productsInCart[i].count += 1
//                  }
//                  else if (isMinusButton) {
//                      productsInCart[i].count -= 1
//                  }
//                  productsInCart[i].price = productsInCart[i].basePrice * productsInCart[i].count;

//              }
//              if (productsInCart[i].count <= 0) {
//                  productsInCart.splice(i, 1);
//              }
//          }
//          updateShoppingCartHTML();
//      }
//  });


updateShoppingCartHTML();