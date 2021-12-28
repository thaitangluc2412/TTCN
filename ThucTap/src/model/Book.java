package model.bean;
import java.time.LocalDate;
public class Book {
	private int BookID;
	private String Title;
	private String Desciption;
	private String Image;
	private double Price;
	private LocalDate PublishDate;
	private int CategoryID;
	
	public int getBookID() {
		return BookID;
	}
	public void setBookID(int bookID) {
		BookID = bookID;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getDesciption() {
		return Desciption;
	}
	public void setDesciption(String desciption) {
		Desciption = desciption;
	}
	public String getImage() {
		return Image;
	}
	public void setImage(String image) {
		Image = image;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public LocalDate getPublishDate() {
		return PublishDate;
	}
	public void setPublishDate(LocalDate publishDate) {
		PublishDate = publishDate;
	}
	public int getCategoryID() {
		return CategoryID;
	}
	public void setCategoryID(int categoryID) {
		CategoryID = categoryID;
	}
}
