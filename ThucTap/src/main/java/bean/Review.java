package bean;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "Review")
public class Review {

	
    @Id
    @Column(name = "ReviewID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer reviewId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "BookID", referencedColumnName = "BookID")
    private Book book;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UserID", referencedColumnName = "UserID")
    private User user;

    @Column(name = "Comment")
    private String comment;

    @Column(name = "Rating")
    private Double rating;

    @Column(name = "ReviewDate")
    private LocalDateTime ReviewDate;

    public Review() {
    }

    public Review(Integer reviewId,
                  Book book,
                  User user,
                  String comment,
                  Double rating,
                  LocalDateTime reviewDate) {
        this.reviewId = reviewId;
        this.book = book;
        this.user = user;
        this.comment = comment;
        this.rating = rating;
        ReviewDate = reviewDate;
    }

    public Integer getReviewId() {
        return reviewId;
    }

    public void setReviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    public LocalDateTime getReviewDate() {
        return ReviewDate;
    }

    public void setReviewDate(LocalDateTime reviewDate) {
        ReviewDate = reviewDate;
    }

    @Override
    public String toString() {
        return "Review{" +
               "reviewId=" + reviewId +
               ", book=" + book +
               ", user=" + user +
               ", comment='" + comment + '\'' +
               ", rating=" + rating +
               ", ReviewDate=" + ReviewDate +
               '}';
    }
}
