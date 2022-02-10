let productsInCart = JSON.parse(localStorage.getItem('shoppingCart'));
if (!productsInCart) {
	productsInCart = [];
}
const products3 = document.querySelector('.cart-in-payment');
const products = document.querySelector('#myForm');
const subtotal = document.querySelector('.subtotal');
const subtotal2 = document.querySelector('.subtotal2');

const countTheSumPrice = function() { // 4
	let sum = 0;
	productsInCart.forEach(item => {
		sum += item.price;
	});
	return sum;
}

const updateMyCart = function() {

	let sumPrice2 = countTheSumPrice();

	if (subtotal) {
		subtotal.innerHTML = `$` + `${sumPrice2}`;
	}
	if (subtotal2) {
		subtotal2.innerHTML = `$` + `${sumPrice2}`;
	}

	if (products3) {
		if (productsInCart.length > 0) {
			let result = productsInCart.map(product => {
				return `<div class="row" style="margin-bottom: 10px">
							<div class="col-2" style="height: 70px; width: 90px">
								<a href="TheBook?Book=${product.id}"><img src="${product.image}" style="height: 100%"></a>
							</div>
							<div class="col-6 title-product d-flex align-items-center"
								style="margin: 0">
								<div>
									<div>
										<a href="TheBook?Book=${product.id}">${product.name}</a>
									</div>
									<div>
										<p style="margin: 0; text-align: left">Quantity:
											${product.count}</p>
									</div>
								</div>
							</div>
							<div class="col-md-offset-1 col-3 d-flex align-items-center">
								<p style="margin: 0">${product.price}$</p>
							</div>
						</div> `
			});
			products3.innerHTML = result.join('');


		}
		else {
			products3.innerHTML = `<h2 class="text-center">You don't choose any products.</h2>`;

		}

	}

}

updateMyCart()

paypal.Buttons({
	// Sets up the transaction when a payment button is clicked
	createOrder: function(data, actions) {
		return actions.order.create({
			intent: 'CAPTURE',
			payer: {
				name: {
					given_name: 'Vy',
					surname: 'Tuong'
				},
				address: {
					address_line_1: "934A Big Avenue",
					address_line_2: "Amish Country Byway",
					admin_area_2: "Berlin",
					admin_area_1: "Ohio",
					postal_code: "44688",
					country_code: "US"
				},

				email_address: document.getElementById('emailUser').value
			},
			purchase_units: [{
				amount: {
					value: countTheSumPrice() > 0 ? countTheSumPrice : '' + ''// Can reference variables or functions. Example: `value: document.getElementById('...').value`
				}
			}]
		});
	},

	// Finalize the transaction after payer approval
	onApprove: function(data, actions) {
		return actions.order.capture().then(function(orderData) {
			// Successful capture! For dev/demo purposes:
			let result1 = productsInCart.map(product => {
				return `<input type="checkbox" class="hidden" name="bookNQuantity" value="${product.id}/${product.count}" checked>`;
			});

			document.getElementById("myForm").innerHTML = document.getElementById("myForm").innerHTML + result1.join('');
			window.localStorage.clear();
			document.getElementById("myForm").submit();
			//window.location.replace("http://localhost:8084/ThucTap/Payment");

			// When ready to go live, remove the alert and show a success message within this page. For example:
			// var element = document.getElementById('paypal-button-container');
			// element.innerHTML = '';
			// element.innerHTML = '<h3>Thank you for your payment!</h3>';
			// Or go to another URL:  actions.redirect('thank_you.html');
		});
	},
	onError: function(err) {
		alert('You didn\'t buy anything');
	}
}).render('#paypal-button-container');