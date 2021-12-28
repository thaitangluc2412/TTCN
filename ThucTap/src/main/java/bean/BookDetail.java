package bean;

public class BookDetail {
    private int userId;
    private int bookId;

    public BookDetail() {
    }

    public BookDetail(int userId, int bookId) {
        this.userId = userId;
        this.bookId = bookId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    @Override
    public String toString() {
        return "BookDetail [userId=" + userId + ", bookId=" + bookId + "]";
    }

}	
