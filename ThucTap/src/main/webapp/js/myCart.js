/**
 * 
 */
let productsInCart = JSON.parse(localStorage.getItem('shoppingCart'));

const products3 = document.querySelector('.my-cart-product');

if (!productsInCart) {
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
}
else {
    products3.innerHTML = ``;

}

