package bean;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "OrderDetail")
public class OrderDetail {

    @EmbeddedId
    private Id id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "OrderId", referencedColumnName = "OrderId", insertable = false, updatable = false)
    private Order order;

    public void setBook(Book book) {
		this.book = book;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BookId", referencedColumnName = "BookId", insertable = false, updatable = false)
    private Book book;


    @Column(name = "quantity")
    private Integer quantity;

    public OrderDetail() {
    }

    public Book getBook() {
		return book;
	}

	public Integer getQuantity() {
		return quantity;
	}

	@Override
    public String toString() {
        return "OrderDetail{" +
               "id=" + id +
               ", order=" + order +
               ", book=" + book +
               ", quantity=" + quantity +
               '}';
    }

    @Embeddable
    public static class Id implements Serializable {

        private static final long serialVersionUID = 1746436995300407165L;

        @Column(name = "OrderId")
        private Integer orderId;

        @Column(name = "BookId")
        private Integer bookId;

        public Id() {
        }

        public Id(Integer orderId, Integer bookId) {
            this.orderId = orderId;
            this.bookId = bookId;
        }

        public Integer getOrderId() {
            return orderId;
        }

        public void setOrderId(Integer orderId) {
            this.orderId = orderId;
        }

        public Integer getBookId() {
            return bookId;
        }

        public void setBookId(Integer bookId) {
            this.bookId = bookId;
        }

        @Override
        public String toString() {
            return "Id [orderId=" + orderId + ", bookId=" + bookId + "]";
        }
    }
}
