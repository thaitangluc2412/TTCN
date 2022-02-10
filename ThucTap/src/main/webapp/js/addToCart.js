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
const products = document.querySelectorAll('.product-wapper');
const products2 = document.querySelectorAll('.product-wapper2');
const quantityProduct = document.querySelector(".quantity-product");
const productDetail = document.querySelector(".product-detail-wapper");
const products3 = document.querySelector('.my-cart-product');
const subtotal = document.querySelector('.subtotal-area');




// products.innerHTML = ``;

const countTheSumPrice = function() { // 4
	let sum = 0;
	productsInCart.forEach(item => {
		sum += item.price;
	});
	return sum;
}

const updateShoppingCartHTML = function() {  // 3

	let sumPrice = countTheSumPrice();
	quantityProduct.innerHTML = `<i
	class="flaticon-shop"></i> <span>${productsInCart.length}</span>`;
	localStorage.setItem('shoppingCart', JSON.stringify(productsInCart));
	if (productsInCart.length > 0) {
		let result = productsInCart.map(product => {
			return `<div class="row cart-product">
			<div class="cart-product-image" style="margin-left: 10px">
				<a href="TheBook?Book=${product.id}"> <img
					src="${product.image}"
					alt="">
				</a>
			</div>
			<div class="cart-product-info title-product">
				<p style="margin-bottom: 5px">
					<a href="TheBook?Book=${product.id}"> ${product.name}</a>
				</p>
				<span class="cart-price">$ ${product.price}</span>
				<div style="margin-top: 10px">
					<button class="button-minus text-secondary" data-id=${product.id}>-</button>
					<span class="countOfProduct">${product.count}</span>
					<button class="button-plus text-secondary" data-id=${product.id}>+</button>
				</div>
			</div>
			<div class="cart-product-remove deleteProduct">
				<i class="fa fa-times deleteProduct" data-id=${product.id}></i>
			</div>
		</div> `
		});
		parentElement.innerHTML = result.join('') + `<div class="total-cart-price">
		<div class="cart-product-line">
			<span>Total</span> <span class="total">$ ${sumPrice}</span>
		</div>
	</div>
	<div class="cart-checkout">
		<a href="CheckoutController"> Check out <i
			class="fa fa-chevron-right"></i>
		</a>
	</div>`;


	}
	else {
		parentElement.innerHTML = `<div class="total-cart-price">
		<div class="cart-product-line">
			<span>Total</span> <span class="total">$</span>
		</div>
	</div>
	<div class="cart-checkout">
		<a href="CheckoutController"> Check out <i
			class="fa fa-chevron-right"></i>
		</a>
	</div>`;

	}
	updateMyCart()
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

const updateMyCart = function() {

	let sumPrice2 = countTheSumPrice();

	if (subtotal) {
		subtotal.innerHTML = `$` + `${sumPrice2}`;
	}

	if (products3) {
		if (productsInCart.length > 0) {
			let result = productsInCart.map(product => {
				return `<tr>
				<td><div class="product-detail-title">
				<a href="#"><img src="${product.image}"
					class="avatar" alt="Avatar">${product.name}</a>
			</div></td>
           <td class="product-quantity product-cart-details"><button class="button-minus text-secondary" data-id=${product.id}>-</button>
            <span class="countOfProduct">${product.count}</span>
            <button class="button-plus text-secondary" data-id=${product.id}>+</button></td>
            <td>$${product.price}</td>
            <td><a href="CheckoutController" class="view"
										title="View Details" data-toggle="tooltip"><i
											class="fa fa-shopping-bag"></i></a></td>
		    <td><button class="text-secondary delete-in-cart" data-id=${product.id}><i class="flaticon-delete delete-in-cart" data-id=${product.id}></i></button></td>								
        </tr> `
			});
			products3.innerHTML = `<table class="table table-striped table-hover"
			style="text-align: center">
			<thead>
				<tr>
					<th>Product</th>
					<th>Quantity</th>
					<th>Price</th>
					<th>Buy now</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>` + result.join('') + `</tbody>
        </table>`;


		}
		else {
			products3.innerHTML = `<h2 class="text-center">You don't choose any products.</h2>`;

		}

	}

}

products.forEach(item => {   // 1
	item.addEventListener('click', (e) => {
		if (e.target.classList.contains('addToCart')) {
			const productID = item.querySelector('.id-product').textContent;
			const productName = item.querySelector('.title-product').textContent;
			const productPrice = item.querySelector('.rating-icon').textContent;
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


products2.forEach(item => {   // 1
	item.addEventListener('click', (e) => {
		if (e.target.classList.contains('addToCart')) {
			const productID = item.querySelector('.id-product').textContent;
			const productName = item.querySelector('.deal-product-content').textContent;
			const productPrice = item.querySelector('.product-price').textContent;
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


parentElement.addEventListener('click', (e) => { // Last
	const isDeleteButton = e.target.classList.contains('deleteProduct');
	if (isDeleteButton) {
		for (let i = 0; i < productsInCart.length; i++) {
			if (productsInCart[i].id == e.target.dataset.id) {
				productsInCart.splice(i, 1);
			}
		}
		updateShoppingCartHTML();
	}
});

updateShoppingCartHTML();


if (productDetail) {
	productDetail.addEventListener('click', (e) => {
		if (e.target.classList.contains('addToCart')) {
			const productID = productDetail.querySelector('.id-product').textContent;
			const productName = productDetail.querySelector('.title-product').textContent;
			const productPrice = productDetail.querySelector('.single-product-price').textContent;
			const productImage = productDetail.querySelector('img').src;
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
}

if (products3) {
	products3.addEventListener('click', (e) => { // Last
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
}

if (products3) {
	products3.addEventListener('click', (e) => { // Last
		const isDeleteButton2 = e.target.classList.contains('delete-in-cart');
		if (isDeleteButton2) {
			for (let i = 0; i < productsInCart.length; i++) {
				if (productsInCart[i].id == e.target.dataset.id) {
					productsInCart.splice(i, 1);
				}
			}
			updateShoppingCartHTML();
		}
	});
}

if (products3) {

//	clearAll.addEventListener('click', (e) => {
//		productsInCart = [];
//		updateShoppingCartHTML()
//	});
}



updateMyCart();
updateShoppingCartHTML();