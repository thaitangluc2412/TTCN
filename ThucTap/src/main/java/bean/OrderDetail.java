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

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BookId", referencedColumnName = "BookId", insertable = false, updatable = false)
    private Book book;

    @Column(name = "Quantity")
    private int quantity;

    public OrderDetail() {
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
        private int orderId;

        @Column(name = "BookId")
        private int bookId;

        public Id() {
        }

        public Id(int orderId, int bookId) {
            this.orderId = orderId;
            this.bookId = bookId;
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

        @Override
        public String toString() {
            return "Id [orderId=" + orderId + ", bookId=" + bookId + "]";
        }
    }
}
