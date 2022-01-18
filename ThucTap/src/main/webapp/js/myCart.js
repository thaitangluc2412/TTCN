
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
					value: '88.40'// Can reference variables or functions. Example: `value: document.getElementById('...').value`
				}
			}]
		});
	},

	// Finalize the transaction after payer approval
	onApprove: function(data, actions) {
		return actions.order.capture().then(function(orderData) {
			// Successful capture! For dev/demo purposes:
			window.location.replace("http://localhost:8084/ThucTap/Payment");

			// When ready to go live, remove the alert and show a success message within this page. For example:
			// var element = document.getElementById('paypal-button-container');
			// element.innerHTML = '';
			// element.innerHTML = '<h3>Thank you for your payment!</h3>';
			// Or go to another URL:  actions.redirect('thank_you.html');
		});
	}
}).render('#paypal-button-container');