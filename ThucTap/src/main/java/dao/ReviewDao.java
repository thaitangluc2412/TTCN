package dao;

import bean.Review;

import java.util.List;

public interface ReviewDao {
    List<Review> getAll();

    // fixme: map Book class to Book table
    List<Review> getReviewByBookId(int bookId);

    List<Review> getReviewByUserId(int userId);
}
