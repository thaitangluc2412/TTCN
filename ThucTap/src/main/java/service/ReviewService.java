package service;

import bean.Review;
import bean.ReviewDetailWithUserNameDto;

import java.util.List;

public interface ReviewService {
    List<Review> getAll();

    List<Review> getReviewByBookId(int bookId);

    List<Review> getReviewByUserId(int userId);

    List<ReviewDetailWithUserNameDto> getLatestReviews();
}
