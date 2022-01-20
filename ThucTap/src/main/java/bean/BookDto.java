package bean;

import java.util.StringJoiner;

public class BookDto {
    private Integer bookId;
    private String image;
    private String title;
    private String category;
    private Integer total;
    private Double profit;

    public BookDto() {
	}

	public BookDto(Integer bookId, String image, String title, String category, Integer total, Double profit) {
		this.bookId = bookId;
		this.image = image;
		this.title = title;
		this.category = category;
		this.total = total;
		this.profit = profit;
	}

	public Integer getBookId() {
		return bookId;
	}

	public void setBookId(Integer bookId) {
		this.bookId = bookId;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Double getProfit() {
		return profit;
	}

	public void setProfit(Double profit) {
		this.profit = profit;
	}

	@Override
	public String toString() {
		return "BookDto [bookId=" + bookId + ", image=" + image + ", title=" + title + ", category=" + category
				+ ", total=" + total + ", profit=" + profit + "]";
	}
    
    
}
