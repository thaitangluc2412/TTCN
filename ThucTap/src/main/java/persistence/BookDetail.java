package persistence;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "bookdetail")
public class BookDetail {
    @EmbeddedId
    private Id id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BookId", insertable = false, updatable = false)
    private Book book;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "AuthorId", insertable = false, updatable = false)
    private Author author;

    @Column(name = "Profit")
    private Double profit;

    public BookDetail() {
    }

    public Id getId() {
        return id;
    }

    public void setId(Id id) {
        this.id = id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Double getProfit() {
        return profit;
    }

    public void setProfit(Double profit) {
        this.profit = profit;
    }

    @Embeddable
    public static class Id implements Serializable{

        private static final long serialVersionUID = 2760719910203757132L;

        @Column(name = "BookId")
        private Integer bookId;

        @Column(name = "AuthorId")
        private Integer authorId;

        public Id() {
        }

        public Integer getBookId() {
            return bookId;
        }

        public void setBookId(Integer bookId) {
            this.bookId = bookId;
        }

        public Integer getAuthorId() {
            return authorId;
        }

        public void setAuthorId(Integer authorId) {
            this.authorId = authorId;
        }

        @Override
        public String toString() {
            return getClass().getSimpleName() + "(" +
                   "bookId = " + bookId + ", " +
                   "authorId = " + authorId + ")";
        }
    }

    @Override
    public String toString() {
        return getClass().getSimpleName() + "(" +
               "EmbeddedId = " + id + ", " +
               "profit = " + profit + ")";
    }
}