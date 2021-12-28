package bean;

import java.time.LocalDate;

public class Book {
    private int bookId;
    private String title;
    private String desciption;
    private String image;
    private double price;
    private LocalDate publishDate;
    private int categoryID;

    public Book() {
    }

    public Book(int bookId, String title, String description, String image, double price, LocalDate publishDate,
                int categoryID) {
        this.bookId = bookId;
        this.title = title;
        this.desciption = description;
        this.image = image;
        this.price = price;
        this.publishDate = publishDate;
        this.categoryID = categoryID;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
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

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    @Override
    public String toString() {
        return "Book [bookId=" + bookId + ", title=" + title + ", desciption=" + desciption + ", image=" + image
               + ", price=" + price + ", publishDate=" + publishDate + ", categoryID=" + categoryID + "]";
    }


}
