package dao;

import bean.Review;
import bean.ReviewDetailWithUserNameDto;

import java.util.List;

public interface ReviewDao {
    List<Review> getAll();

    List<Review> getReviewByBookId(int bookId);

    List<Review> getReviewByUserId(int userId);

    List<ReviewDetailWithUserNameDto> getLatestReviews();
    
    List<Review> getReviewByBookTitle(String title);
    
    List<Review> getReviewCurrentPage(int trimStart, int rows);
    
    List<Review> getByTitleCurrentPage(int trimStart, int rows, String title);

    boolean save(Review review);
}
