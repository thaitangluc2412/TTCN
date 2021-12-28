package bean;

import java.time.LocalDate;

public class Review {

	private int reviewId;
	private int bookId;
	private int userId;
	private String comment;
	private double rating;
	private LocalDate ReviewDate;
	
	public Review() {
	}

	public Review(int reviewId, int bookId, int userId, String comment, double rating, LocalDate reviewDate) {
		this.reviewId = reviewId;
		this.bookId = bookId;
		this.userId = userId;
		this.comment = comment;
		this.rating = rating;
		ReviewDate = reviewDate;
	}

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public LocalDate getReviewDate() {
		return ReviewDate;
	}

	public void setReviewDate(LocalDate reviewDate) {
		ReviewDate = reviewDate;
	}

	@Override
	public String toString() {
		return "Review [reviewId=" + reviewId + ", bookId=" + bookId + ", userId=" + userId + ", comment=" + comment
				+ ", rating=" + rating + ", ReviewDate=" + ReviewDate + "]";
	}
	
	
	
}
