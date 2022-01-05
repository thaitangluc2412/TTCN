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
// const cartSumPrice = document.querySelector('#sum-prices');
const products = document.querySelectorAll('.product-wapper');


console.log("Hello122233333");
products.innerHTML = ``;

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
			return `<div class="row cart-product">
			<div class="cart-product-image" style="margin-left: 10px">
				<a href="single-product.html"> <img
					src="${product.image}"
					alt="">
				</a>
			</div>
			<div class="cart-product-info title-product">
				<p style="margin-bottom: 5px">
					<a href="single-product.html"> ${product.name}</a>
				</p>
				<span class="cart-price">$ ${product.price}</span>
				<div style="margin-top: 10px">
					<button class="button-minus text-secondary" data-id=${product.id}>-</button>
					<span class="countOfProduct">${product.count}</span>
					<button class="button-plus text-secondary" data-id=${product.id}>+</button>
				</div>
			</div>
			<div class="cart-product-remove">
				<i class="fa fa-times"></i>
			</div>
		</div> `
		});
		console.log("Hello1");
		parentElement.innerHTML = result.join('') + `<div class="total-cart-price">
		<div class="cart-product-line">
			<span>Total</span> <span class="total">$ 140.00</span>
		</div>
	</div>
	<div class="cart-checkout">
		<a href="checkout.html"> Check out <i
			class="fa fa-chevron-right"></i>
		</a>
	</div>`;
		// document.querySelector('.cart-checkout').classList.remove('hidden');
		// cartSumPrice.innerHTML = countTheSumPrice();

	}
	else {
		console.log("Hello22222222");
		parentElement.innerHTML = `<div class="total-cart-price">
		<div class="cart-product-line">
			<span>Total</span> <span class="total">$</span>
		</div>
	</div>
	<div class="cart-checkout">
		<a href="checkout.html"> Check out <i
			class="fa fa-chevron-right"></i>
		</a>
	</div>`;
		// document.querySelector('.cart-checkout').classList.add('hidden');
		// cartSumPrice.innerText  = ``;
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
		const productID = item.querySelector('.id-product').textContent;
		console.log(productID);
		const productName = item.querySelector('.title-product').textContent;
		console.log(productName);
		const productPrice = item.querySelector('.rating-icon').textContent;
		// productPrice = productPrice.replace('$','');
		console.log(productPrice);
		const productImage = item.querySelector('img').src;
		console.log(productImage);
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

 parentElement.addEventListener('click', (e) => { // Last
     const isPlusButton = e.target.classList.contains('button-plus');
     const isMinusButton = e.target.classList.contains('button-minus');
     if (isPlusButton || isMinusButton) {
         for (let i = 0; i < productsInCart.length; i++) {
             if (productsInCart[i].id == e.target.dataset.id) {
                 if (isPlusButton) {
                     productsInCart[i].count += 1
                 }
                 else if (isMinusButton) {
                     productsInCart[i].count -= 1
                 }
                 productsInCart[i].price = productsInCart[i].basePrice * productsInCart[i].count;

             }
             if (productsInCart[i].count <= 0) {
                 productsInCart.splice(i, 1);
             }
         }
         updateShoppingCartHTML();
     }
 });


updateShoppingCartHTML();