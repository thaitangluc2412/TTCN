package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.time.LocalDate;

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
    
    @Column(name = "Rating")
    private Double rating;
    
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

   

    public Book(Integer bookId, String title, String desciption, Double rating, String image, double price,
			LocalDate publishDate, Integer categoryID) {
		this.bookId = bookId;
		this.title = title;
		this.desciption = desciption;
		this.rating = rating;
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
    
    public Double getRating() {
		return rating;
	}
    
    public void setRating(Double rating) {
		this.rating = rating;
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
		return "Book [bookId=" + bookId + ", title=" + title + ", desciption=" + desciption + ", rating=" + rating
				+ ", image=" + image + ", price=" + price + ", publishDate=" + publishDate + ", categoryID="
				+ categoryID + "]";
	}

}
