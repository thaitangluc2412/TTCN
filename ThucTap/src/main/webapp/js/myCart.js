let productsInCart = JSON.parse(localStorage.getItem('shoppingCart'));
if (!productsInCart) {
	productsInCart = [];
}

const parentElement = document.querySelector('.cart-in-payment');
const subtotal = document.querySelector('.subtotal');
const subtotal2 = document.querySelector('.subtotal2');

const countTheSumPrice = function() { // 4
	let sum = 0;
	productsInCart.forEach(item => {
		sum += item.price;
	});
	return sum;
}

const updateShoppingCartHTML = function() {  // 3

	let sumPrice = countTheSumPrice();
	subtotal.textContent = sumPrice + '$'; 
	subtotal2.textContent = sumPrice + '$'; 
	localStorage.setItem('shoppingCart', JSON.stringify(productsInCart));

	if (productsInCart.length > 0) {
		let result = productsInCart.map(product => {
			return `<div class="row" style="margin-bottom: 10px">
						<div class="col-2" style="height: 70px; width: 90px">
							<a href="#"><img
								src="${product.image}"
								style="height: 100%"></a>
						</div>
						<div class="col-6 title-product d-flex align-items-center"
							style="margin: 0">
							<div>
								<div>
									<a href="TheBook?Book=${product.id}">${product.name}</a>
								</div>
								<div>
									<p style="margin: 0; text-align: left">Quantity: ${product.count}</p>
								</div>
							</div>
						</div>
						<div class="col-md-offset-1 col-3 d-flex align-items-center">
							<p style="margin: 0">${product.price} $</p>
						</div>
					</div> `
		});
		parentElement.innerHTML = result.join('');


	}
	else {
		parentElement.innerHTML = ``;

	}
	
}

updateShoppingCartHTML()