package bean;

import java.time.LocalDate;

public class Order {
	private int orderID;
	private int userId;
	private LocalDate orderDate;
	private double totalPrice;
	private Status status;
	private String shippingAddress;
	private String recipientName;
	private String recipientPhone;
	
	public Order() {
	}

	public Order(int orderID, int userId, LocalDate orderDate, double totalPrice, Status status, String shippingAddress,
			String recipientName, String recipientPhone) {
		this.orderID = orderID;
		this.userId = userId;
		this.orderDate = orderDate;
		this.totalPrice = totalPrice;
		this.status = status;
		this.shippingAddress = shippingAddress;
		this.recipientName = recipientName;
		this.recipientPhone = recipientPhone;
	}

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public LocalDate getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public String getRecipientName() {
		return recipientName;
	}

	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}

	public String getRecipientPhone() {
		return recipientPhone;
	}

	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}

	@Override
	public String toString() {
		return "Order [orderID=" + orderID + ", userId=" + userId + ", orderDate=" + orderDate + ", totalPrice="
				+ totalPrice + ", status=" + status + ", shippingAddress=" + shippingAddress + ", recipientName="
				+ recipientName + ", recipientPhone=" + recipientPhone + "]";
	}
	
	
}
