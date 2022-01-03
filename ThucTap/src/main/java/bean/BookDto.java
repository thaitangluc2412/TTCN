package bean;

import java.time.LocalDate;

public class BookDto {
	public static final String BOOK_NAME = "bookId";
	public static final String CATEGORY_ID = "categoryId";
	public static final String BOOK_TITLE = "title";
	public static final String BOOK_DESC = "description";
	public static final String BOOK_RATING = "rating";
	public static final String BOOK_IMAGE = "image";
	public static final String BOOK_PRICE = "price";
	public static final String BOOK_PUBLISH = "publishDate";
	public static final String BOOK_QUANTITY = "quantity";
	//public static final String BOOK = "book";
	public static final String NUM_OF_BOOK_SOLD = "numOfBookSold";
	
	
	private Integer bookId;
    private Category categoryId;
    private String title;
    private String description;
    private Integer rating;
    private String image;
    private Double price;
    private LocalDate publishDate;
    private Integer quantity;
	private Integer numOfBookSold;
	
	public BookDto() {
	}

	public BookDto(Integer bookId, Category categoryId, String title, String description, Integer rating, String image,
			Double price, LocalDate publishDate, Integer quantity, Integer numOfBookSold) {
		this.bookId = bookId;
		this.categoryId = categoryId;
		this.title = title;
		this.description = description;
		this.rating = rating;
		this.image = image;
		this.price = price;
		this.publishDate = publishDate;
		this.quantity = quantity;
		this.numOfBookSold = numOfBookSold;
	}

	public Integer getBookId() {
		return bookId;
	}

	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	public Category getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Category categoryId) {
		this.categoryId = categoryId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public LocalDate getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(LocalDate publishDate) {
		this.publishDate = publishDate;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Integer getNumOfBookSold() {
		return numOfBookSold;
	}

	public void setNumOfBookSold(Integer numOfBookSold) {
		this.numOfBookSold = numOfBookSold;
	}

	@Override
	public String toString() {
		return "BookDto [bookId=" + bookId + ", categoryId=" + categoryId + ", title=" + title + ", description="
				+ description + ", rating=" + rating + ", image=" + image + ", price=" + price + ", publishDate="
				+ publishDate + ", quantity=" + quantity + ", numOfBookSold=" + numOfBookSold + "]";
	}

	

	
}

