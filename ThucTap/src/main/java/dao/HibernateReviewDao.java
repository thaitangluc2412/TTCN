package dao;

import bean.Review;
import bean.ReviewDto;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.hibernate.type.LocalDateTimeType;
import org.hibernate.type.StringType;
import utils.QueryUtils;

import java.util.List;

public class HibernateReviewDao extends AbstractHibernateDao implements ReviewDao {

    private static final String Q_GET_ALL = "SELECT * FROM Review";
    private static final String Q_GET_REVIEW_BY_BOOKID = "SELECT * FROM Review WHERE BookID = :bookid";
    private static final String Q_GET_REVIEW_BY_USERID = "SELECT * FROM Review WHERE UserID = :userid";
    private static final String Q_GET_LASTEST_REVIEW = "SELECT usr.Name,\n" +
                                                       "       rv.Comment,\n" +
                                                       "       rv.Rating,\n" +
                                                       "       rv.ReviewDate,\n" +
                                                       "       bk.Title,\n" +
                                                       "       bk.Image\n" +
                                                       "FROM review rv\n" +
                                                       "JOIN user usr\n" +
                                                       "ON rv.UserID = usr.UserID\n" +
                                                       "JOIN book bk\n" +
                                                       "ON rv.BookID = bk.BookID\n" +
                                                       "ORDER BY rv.ReviewDate DESC\n" +
                                                       "LIMIT 2";
    
    private static final String Q_GET_REVIEW_BY_BOOK_TITLE = "SELECT review.* FROM Review\n"
    													+ "JOIN book\n"
    													+ "On Review.BookId = Book.bookId\n"
    													+ "WHERE Book.title Like :title";
    
    private static final String Q_GET_CURRENT_PAGE = "SELECT * FROM Review LIMIT :trimStart , :rows";
    
    private static final String Q_GET_BY_TITLE_CURRENT_PAGE = "SELECT review.* FROM Review\n"
														+ "JOIN book\n"
														+ "On Review.BookId = Book.bookId\n"
														+ "WHERE Book.title Like :title\n"
														+ "LIMIT :trimStart , :rows";

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
    public List<ReviewDto> getLatestReviews() {
        return openSession().createNativeQuery(Q_GET_LASTEST_REVIEW)
                            .addScalar("Name", StringType.INSTANCE)
                            .addScalar("Comment", StringType.INSTANCE)
                            .addScalar("Rating", IntegerType.INSTANCE)
                            .addScalar("ReviewDate", LocalDateTimeType.INSTANCE)
                            .addScalar("Title", StringType.INSTANCE)
                            .addScalar("Image", StringType.INSTANCE)
                            .setResultTransformer(Transformers.aliasToBean(ReviewDto.class))
                            .getResultList();
    }
    
    @Override
    public List<Review> getReviewByBookTitle(String title) {
    	return openSession().createNativeQuery(Q_GET_REVIEW_BY_BOOK_TITLE, Review.class)
                .setParameter("title", "%" + title + "%", StringType.INSTANCE)
                .getResultList();
    }
    
    @Override
    public List<Review> getReviewCurrentPage(int trimStart, int rows) {
    	return openSession().createNativeQuery(Q_GET_CURRENT_PAGE, Review.class)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
    }
    
    @Override
    public List<Review> getByTitleCurrentPage(int trimStart, int rows, String title) {
    	return openSession().createNativeQuery(Q_GET_BY_TITLE_CURRENT_PAGE, Review.class)
				.setParameter("title", "%" + title + "%", StringType.INSTANCE)
				.setParameter("trimStart", trimStart, IntegerType.INSTANCE)
				.setParameter("rows", rows, IntegerType.INSTANCE).getResultList();
    }

    @Override
    public boolean save(Review review) {
        return QueryUtils.save(review);
    }
}
