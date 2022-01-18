package bean;

import javax.persistence.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "`order`")
public class Order {
	public static final String ORDER_STATUS = "status";
	public static final String ORDER_ORDER_ID = "orderId";
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "OrderID")
    private Integer orderId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UserID", referencedColumnName = "UserID")
    private User user;

    @Column(name = "OrderDate")
    private LocalDate orderDate;

    @Column(name = "TotalPrice")
    private Double totalPrice;

    @Column(name = "Status")
    @Enumerated(EnumType.STRING)
    private Status status;

    @Column(name = "ShippingAddress")
    private String shippingAddress;

    @Column(name = "RecipientName")
    private String recipientName;

    @Column(name = "RecipientPhone")
    private String recipientPhone;

    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetails;

    public Order() {
    }

    public Order(Integer orderId,
                 User user,
                 LocalDate orderDate,
                 Double totalPrice,
                 Status status,
                 String shippingAddress,
                 String recipientName,
                 String recipientPhone) {
        this.orderId = orderId;
        this.user = user;
        this.orderDate = orderDate;
        this.totalPrice = totalPrice;
        this.status = status;
        this.shippingAddress = shippingAddress;
        this.recipientName = recipientName;
        this.recipientPhone = recipientPhone;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User userId) {
        this.user = userId;
    }

    public LocalDate getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDate orderDate) {
        this.orderDate = orderDate;
    }

    public Double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(Double totalPrice) {
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
        return "Order{" +
               "orderId=" + orderId +
               ", user=" + user +
               ", orderDate=" + orderDate +
               ", totalPrice=" + totalPrice +
               ", status=" + status +
               ", shippingAddress='" + shippingAddress + '\'' +
               ", recipientName='" + recipientName + '\'' +
               ", recipientPhone='" + recipientPhone + '\'' +
               '}';
    }

    public enum Status {
<<<<<<< HEAD
        Delivered, Processing, Shipping
=======
    	Delivered, Processing, Shipping
>>>>>>> 448596a (luc)
    }
}
