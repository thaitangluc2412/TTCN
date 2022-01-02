package bean;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "bookuser")
public class BookUser {
    @EmbeddedId
    private Id id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BookID", referencedColumnName = "BookID", insertable = false, updatable = false)
    private Book book;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UserID", referencedColumnName = "UserID", insertable = false, updatable = false)
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Id getId() {
        return id;
    }

    public void setId(Id id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "BookUser{" +
               "id=" + id +
               ", book=" + book +
               ", user=" + user +
               '}';
    }

    @Embeddable
    public static class Id implements Serializable {

        private static final long serialVersionUID = -3772092037819807334L;

        @Column(name = "BookID")
        private Integer bookID;

        @Column(name = "UserID")
        private Integer userID;

        public Integer getUserID() {
            return userID;
        }

        public void setUserID(Integer userID) {
            this.userID = userID;
        }

        public Integer getBookID() {
            return bookID;
        }

        public void setBookID(Integer bookID) {
            this.bookID = bookID;
        }
    }
}