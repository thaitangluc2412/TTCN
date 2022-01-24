package service;

import bean.Review;
import bean.ReviewDto;

import java.util.List;

public interface ReviewService {
    List<Review> getAll();

    List<Review> getReviewByBookId(int bookId);

    List<Review> getReviewByUserId(int userId);

    List<ReviewDto> getLatestReviews();
    
    List<Review> getReviewByBookTitle(String title);
    
    List<Review> getReviewCurrentPage(int trimStart, int rows);
    
    List<Review> getByTitleCurrentPage(int trimStart, int rows, String title);

    boolean save(Review review);
}
