package service;

import bean.Review;

import java.util.List;

public interface ReviewService {
    List<Review> getAll();

    List<Review> getReviewByBookId(int bookId);

    List<Review> getReviewByUserId(int userId);
}
