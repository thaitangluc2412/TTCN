package service;

import dao.HibernateReviewDao;
import dao.ReviewDao;
import persistence.Review;

public class ReviewServiceImpl implements ReviewService{
    private ReviewDao reviewDao;

    public ReviewServiceImpl() {
        reviewDao = new HibernateReviewDao();
    }

    @Override
    public boolean save(Review review) {
        return reviewDao.save(review);
    }
}
