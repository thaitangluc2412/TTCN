package bean;

public class OrderDetail {
	private int orderId;
	private int bookId;
	private int quantity;
	
	public OrderDetail() {
	}

	public OrderDetail(int orderId, int bookId, int quantity) {
		this.orderId = orderId;
		this.bookId = bookId;
		this.quantity = quantity;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "OrderDetail [orderId=" + orderId + ", bookId=" + bookId + ", quantity=" + quantity + "]";
	}
	
	
}
