package persistence;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "orderdetail")
public class OrderDetail {

    @EmbeddedId
    private Id id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "OrderId", insertable = false, updatable = false)
    private Order order;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BookId", insertable = false, updatable = false)
    private Book book;

    @Column(name = "Quantity", nullable = false)
    private Integer quantity;

    public Id getId() {
        return id;
    }

    public void setId(Id id) {
        this.id = id;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }


    @Embeddable
    public static class Id implements Serializable {

        private static final long serialVersionUID = -871557623443543036L;

        @Column(name = "OrderId")
        private Integer orderId;

        @Column(name = "BookId")
        private Integer bookId;

        public Id() {
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
            return getClass().getSimpleName() + "(" +
                   "orderId = " + orderId + ", " +
                   "bookId = " + bookId + ")";
        }
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + "(" +
               "EmbeddedId = " + id + ", " +
               "quantity = " + quantity + ")";
    }
}
