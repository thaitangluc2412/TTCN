package bean;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "Book")
public class Book {

    @Id
    @Column(name = "BookID")
    private Integer bookId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CategoryID", referencedColumnName = "CategoryID")
    private Category categoryId;

    @Column(name = "Title")
    private String title;

    @Column(name = "Description")
    private String description;

    @Column(name = "Rating")
    private Integer rating;

    @Column(name = "Image")
    private String image;

    @Column(name = "Price")
    private Double price;

    @Column(name = "PublishDate")
    private LocalDate publishDate;

    @Column(name = "Quantity")
    private Integer quantity;

    public Book() {
    }

    public Book(Integer bookId,
                Category categoryId,
                String title,
                String description,
                Integer rating,
                String image,
                Double price,
                LocalDate publishDate,
                Integer quantity) {
        this.bookId = bookId;
        this.categoryId = categoryId;
        this.title = title;
        this.description = description;
        this.rating = rating;
        this.image = image;
        this.price = price;
        this.publishDate = publishDate;
        this.quantity = quantity;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public LocalDate getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(LocalDate publishDate) {
        this.publishDate = publishDate;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Category getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Category categoryId) {
        this.categoryId = categoryId;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    @Override
    public String toString() {
        return "Book{" +
               "bookId=" + bookId +
               ", categoryId=" + categoryId +
               ", title='" + title + '\'' +
               ", description='" + description + '\'' +
               ", rating=" + rating +
               ", image='" + image + '\'' +
               ", price=" + price +
               ", publishDate=" + publishDate +
               ", quantity=" + quantity +
               '}';
    }
}
