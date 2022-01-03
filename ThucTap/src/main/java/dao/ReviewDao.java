package dao;

import bean.Review;
import bean.ReviewByNameDTO;

import java.util.List;

public interface ReviewDao {
    List<Review> getAll();

    List<Review> getReviewByBookId(int bookId);

    List<Review> getReviewByUserId(int userId);


    List<ReviewByNameDTO> getReviewByName(String name);

    

}
