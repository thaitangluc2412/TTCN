package service;

import bean.Review;
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
}
