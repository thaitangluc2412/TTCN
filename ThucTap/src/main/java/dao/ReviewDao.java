package dao;

import java.util.List;

import bean.Book;
import bean.Review;
import bean.ReviewDetailWithUserNameDto;

public interface ReviewDao {
    List<Review> getAll();

    List<Review> getReviewByBookId(int bookId);

    List<Review> getReviewByUserId(int userId);

    List<ReviewDetailWithUserNameDto> getLatestReviews();
    
    List<Review> getReviewByBookTitle(String title);
    
    List<Review> getReviewCurrentPage(int trimStart, int rows);
    
    List<Review> getByTitleCurrentPage(int trimStart, int rows, String title);
}
