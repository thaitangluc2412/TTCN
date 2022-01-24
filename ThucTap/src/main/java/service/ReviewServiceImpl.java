package service;

import bean.Review;
import bean.ReviewDto;
import dao.HibernateReviewDao;
import dao.ReviewDao;

import java.util.List;

public class ReviewServiceImpl implements ReviewService{

    private final ReviewDao reviewDao;

    public ReviewServiceImpl() {
        reviewDao = new HibernateReviewDao();
    }

    @Override
    public List<Review> getAll() {
        return reviewDao.getAll();
    }

    @Override
    public List<Review> getReviewByBookId(int bookId) {
        return reviewDao.getReviewByBookId(bookId);
    }

    @Override
    public List<Review> getReviewByUserId(int userId) {
        return reviewDao.getReviewByUserId(userId);
    }

    @Override
    public List<ReviewDto> getLatestReviews() {
        return reviewDao.getLatestReviews();
    }
    
    @Override
    public List<Review> getReviewByBookTitle(String title) {
    	return reviewDao.getReviewByBookTitle(title);
    }
    
    @Override
    public List<Review> getByTitleCurrentPage(int trimStart, int rows, String title) {
    	return reviewDao.getByTitleCurrentPage(trimStart, rows, title);
    }

    @Override
    public boolean save(Review review) {
        return reviewDao.save(review);
    }

    @Override
    public List<Review> getReviewCurrentPage(int trimStart, int rows) {
    	return reviewDao.getReviewCurrentPage(trimStart, rows);
    }
    
}
