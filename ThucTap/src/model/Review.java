package model.bean;
import java.time.LocalDateTime;

public class Review {
	private int ReviewID;
	private int BookID;
	private int UserID;
	private String Comment;
	private double Rating;
	private LocalDateTime ReviewDate;
	public int getReviewID() {
		return ReviewID;
	}
	public void setReviewID(int reviewID) {
		ReviewID = reviewID;
	}
	public int getBookID() {
		return BookID;
	}
	public void setBookID(int bookID) {
		BookID = bookID;
	}
	public int getUserID() {
		return UserID;
	}
	public void setUserID(int userID) {
		UserID = userID;
	}
	public String getComment() {
		return Comment;
	}
	public void setComment(String comment) {
		Comment = comment;
	}
	public double getRating() {
		return Rating;
	}
	public void setRating(double rating) {
		Rating = rating;
	}
	public LocalDateTime getReviewDate() {
		return ReviewDate;
	}
	public void setReviewDate(LocalDateTime reviewDate) {
		ReviewDate = reviewDate;
	}

}
