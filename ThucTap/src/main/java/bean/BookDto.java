package bean;

import java.util.StringJoiner;

public class BookDto {
    private Integer bookId;
    private String image;
    private String title;
    private String category;
    private Double profit;

    public BookDto() {
    }

    public BookDto(Integer bookId, String image, String title, String category, Double profit) {
        this.bookId = bookId;
        this.image = image;
        this.title = title;
        this.category = category;
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

    public Double getProfit() {
        return profit;
    }

    public void setProfit(Double profit) {
        this.profit = profit;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", BookDto.class.getSimpleName() + "[", "]")
                .add("bookId='" + bookId + "'")
                .add("image='" + image + "'")
                .add("title='" + title + "'")
                .add("category='" + category + "'")
                .add("profit=" + profit)
                .toString();
    }
}
