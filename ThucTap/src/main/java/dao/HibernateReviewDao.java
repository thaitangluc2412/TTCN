package dao;

import persistence.Review;
import utils.CrudUtils;

public class HibernateReviewDao extends AbstractHibernateDao implements ReviewDao {
    @Override
    public boolean save(Review review) {
        return CrudUtils.save(review);
    }
}
