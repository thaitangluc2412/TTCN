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



// products.innerHTML = ``;

const countTheSumPrice = function () { // 4
	let sum = 0;
	productsInCart.forEach(item => {
		sum += item.price;
	});
	return sum;
}

const updateShoppingCartHTML = function () {  // 3
	
	let sumPrice = countTheSumPrice();
    quantityProduct.innerHTML = `<i
	class="flaticon-shop"></i> <span>${productsInCart.length}</span>`;
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
		<a href="checkout.html"> Check out <i
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
		<a href="checkout.html"> Check out <i
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

const updateMyCart = function () {
	
if (products3) {
    if (productsInCart.length > 0) {
        let result = productsInCart.map(product => {
            return `<tr>
            <td class="product-image"><a href="#"> <img
                    src="${product.image}" alt="">
            </a></td>
            <td class="t-product-name">
                <h3>
                    <a href="#">${product.name}</a>
                </h3>
            </td>
            <td class="product-unit-price">
                <p>$ ${product.basePrice}</p>
            </td>
            <td class="product-quantity product-cart-details"><button class="button-minus text-secondary" data-id=${product.id}>-</button>
            <span class="countOfProduct">${product.count}</span>
            <button class="button-plus text-secondary" data-id=${product.id}>+</button></td>
            <td class="product-quantity">
                <p>$ ${product.price}</p>
            </td>
            <td class="product-remove"><a href="#"> <i
                    class="flaticon-delete"></i>
            </a></td>
        </tr> `
        });
        products3.innerHTML = `<table>
        <thead>
            <tr>
                <th class="product-image">Image</th>
                <th class="t-product-name">Product Name</th>
                <th class="product-unit-price">Unit Price</th>
                <th class="product-quantity">Quantity</th>
                <th class="product-subtotal">Subtotal</th>
                <th class="product-remove">Remove</th>
            </tr>
        </thead>
        <tbody>` + result.join('') + `</tbody>
        </table>`;


    }
    else {
        products3.innerHTML = ``;

    }
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


if(productDetail){
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
});}

updateMyCart();
updateShoppingCartHTML();