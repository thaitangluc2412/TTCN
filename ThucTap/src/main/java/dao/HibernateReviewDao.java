package dao;

import bean.Review;
import bean.ReviewByNameDTO;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.hibernate.type.LocalDateTimeType;
import org.hibernate.type.StringType;

import java.util.List;

public class HibernateReviewDao extends AbstractHibernateDao implements ReviewDao {

    private static final String Q_GET_ALL = "SELECT * FROM Review";
    private static final String Q_GET_REVIEW_BY_BOOKID = "SELECT * FROM Review WHERE BookID = :bookid";
    private static final String Q_GET_REVIEW_BY_USERID = "SELECT * FROM Review WHERE UserID = :userid";
    private static final String Q_GET_REVIEW_BY_NAME = "SELECT usr.Name,\n" +
                                                       "       usr.Role,\n" +
                                                       "       rv.*\n" +
                                                       "FROM review rv\n" +
                                                       "JOIN user usr\n" +
                                                       "ON rv.UserID = usr.UserID\n" +
                                                       "WHERE Name = :name";

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


    @SuppressWarnings({"unchecked", "deprecation"})
    @Override
    public List<ReviewByNameDTO> getReviewByName(String name) {
        return openSession().createNativeQuery(Q_GET_REVIEW_BY_NAME)
                            .setParameter("name", StringType.INSTANCE)
                            .addScalar("Name", StringType.INSTANCE)
                            .addScalar("Role", StringType.INSTANCE)
                            .addScalar("ReviewID", IntegerType.INSTANCE)
                            .addScalar("BookID", IntegerType.INSTANCE)
                            .addScalar("Comment", StringType.INSTANCE)
                            .addScalar("Rating", IntegerType.INSTANCE)
                            .addScalar("ReviewDate", LocalDateTimeType.INSTANCE)
                            .setResultTransformer(Transformers.aliasToBean(ReviewByNameDTO.class))
                            .getResultList();
    }

}
