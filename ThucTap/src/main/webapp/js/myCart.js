
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

updateShoppingCartHTML();
console.log(document.getElementById('addressUser').value);
paypal.Buttons({
	// Sets up the transaction when a payment button is clicked
	createOrder: function(data, actions) {
		return actions.order.create({
			intent: 'CAPTURE',
			payer: {
				name: {
					given_name: "Viet",
					surname: "Nam"
				},
				address: {
					address_line_1: "934A Big Avenue",
					address_line_2: "Amish Country Byway",
					admin_area_2: "Berlin",
					admin_area_1: "Ohio",
					postal_code: "44688",
					country_code: "US"
				},

				email_address: document.getElementById('emailUser').value,
				//		phone: {
				//			phone_type: "MOBILE",
				//			phone_number: {
				//				national_number: "[[${user.phoneNumber}]]"
				//			}
				//		}
			},
			purchase_units: [{
				amount: {
					value: '88.40'// Can reference variables or functions. Example: `value: document.getElementById('...').value`
				}
			}]
		});
	},

	// Finalize the transaction after payer approval
	onApprove: function(data, actions) {
		return actions.order.capture().then(function(orderData) {
			// Successful capture! For dev/demo purposes:
			console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));
			var transaction = orderData.purchase_units[0].payments.captures[0];
			localStorage.removeItem("shoppingCart");
			window.location.replace("http://localhost:8084/ThucTap/ThankYou.jsp");

			// When ready to go live, remove the alert and show a success message within this page. For example:
			// var element = document.getElementById('paypal-button-container');
			// element.innerHTML = '';
			// element.innerHTML = '<h3>Thank you for your payment!</h3>';
			// Or go to another URL:  actions.redirect('thank_you.html');
		});
	}
}).render('#paypal-button-container');