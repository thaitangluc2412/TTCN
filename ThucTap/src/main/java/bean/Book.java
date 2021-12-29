package bean;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Book")
public class Book {
	
	@Id
	@Column(name = "BookID")
    private Integer bookId;
    
    @Column(name = "Title")
    private String title;
    
    @Column(name = "Description")
    private String desciption;
    
    @Column(name = "Image")
    private String image;
    
    @Column(name = "Price")
    private double price;
    
    @Column(name = "PublishDate")
    private LocalDate publishDate;
    
    @Column(name = "CategoryID")
    private Integer categoryID;

    public Book() {
    }

    public Book(Integer bookId, String title, String description, String image, double price, LocalDate publishDate,
    		Integer categoryID) {
        this.bookId = bookId;
        this.title = title;
        this.desciption = description;
        this.image = image;
        this.price = price;
        this.publishDate = publishDate;
        this.categoryID = categoryID;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public LocalDate getPublishDate() {
        return publishDate;
    }

    public void setPublishDate(LocalDate publishDate) {
        this.publishDate = publishDate;
    }

    public Integer getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(Integer categoryID) {
        this.categoryID = categoryID;
    }

    @Override
    public String toString() {
        return "Book [bookId=" + bookId + ", title=" + title + ", desciption=" + desciption + ", image=" + image
               + ", price=" + price + ", publishDate=" + publishDate + ", categoryID=" + categoryID + "]";
    }


}
