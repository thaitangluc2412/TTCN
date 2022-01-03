package dao;

import bean.Review;
import bean.ReviewDetailWithUserNameDto;

import java.util.List;

public interface ReviewDao {
    List<Review> getAll();

    List<Review> getReviewByBookId(int bookId);

    List<Review> getReviewByUserId(int userId);

    List<ReviewDetailWithUserNameDto> getLatestReviews();
}
