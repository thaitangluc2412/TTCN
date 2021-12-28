package dao;

import bean.Review;
import org.hibernate.type.IntegerType;

import java.util.List;

public class HibernateReviewDao extends AbstractHibernateDao implements ReviewDao {

    private static final String Q_GET_ALL = "SELECT * FROM Review";
    private static final String Q_GET_REVIEW_BY_BOOKID = "SELECT * FROM Review WHERE BookID = :bookid";
    private static final String Q_GET_REVIEW_BY_USERID = "SELECT * FROM Review WHERE UserID = :userid";

    @Override
    public List<Review> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, Review.class).getResultList();
    }

    @Override
    public List<Review> getReviewByBookId(int bookId) {
        return openSession().createNativeQuery(Q_GET_REVIEW_BY_BOOKID, Review.class)
                            .setParameter("bookid", bookId, IntegerType.INSTANCE)
                            .getResultList();
    }

    @Override
    public List<Review> getReviewByUserId(int userId) {
        return openSession().createNativeQuery(Q_GET_REVIEW_BY_USERID, Review.class)
                            .setParameter("userid", userId, IntegerType.INSTANCE)
                            .getResultList();
    }
}
