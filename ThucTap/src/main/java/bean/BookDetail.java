package bean;

public class BookDetail {
    private Integer userId;
    private Integer bookId;

    public BookDetail() {
    }

    public BookDetail(Integer userId, Integer bookId) {
        this.userId = userId;
        this.bookId = bookId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    @Override
    public String toString() {
        return "BookDetail [userId=" + userId + ", bookId=" + bookId + "]";
    }

}	
