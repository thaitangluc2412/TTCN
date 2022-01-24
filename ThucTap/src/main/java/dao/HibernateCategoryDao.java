package dao;

import bean.Category;
import bean.CategoryDto;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import utils.QueryUtils;

import java.util.List;

public class HibernateCategoryDao extends AbstractHibernateDao implements CategoryDao {
    private static final String Q_SIGN_IN = "";
    private static final String Q_GET_ALL = "SELECT * FROM Category ORDER BY CategoryId";
    private static final String Q_UPDATE_CATEGORY = "UPDATE bookstore.category SET name = :categoryName \n"
                                                    + "WHERE categoryId = :categoryId";
    private static final String Q_BY_ID = "SELECT * FROM Category WHERE CategoryId = :categoryId";
    private static final String Q_DELETE_CATEGORY_ID = "DELETE FROM category WHERE categoryId= :categoryId";
    private static final String Q_INSERT_CATEGORY = "INSERT INTO bookstore.category (Name)\n"
                                                    + "VALUES (:categoryName)";
    private static String Q_SUM_CATEGORY_BY_ID = "SELECT ct.Name " + CategoryDto.CATEGORY_NAME + ", \n "
                                                 + "count(ct.CategoryId) " + CategoryDto.NUMBER_OF_BOOKS + "  \n " + "FROM Category ct\n" + "JOIN Book bo\n"
                                                 + "ON ct.CategoryId = bo.CategoryId\n" + "GROUP BY ct.CategoryId;";

    @Override
    public List<Category> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, Category.class).getResultList();
    }

    @SuppressWarnings({"unchecked", "deprecation"})
    @Override
    public List<CategoryDto> getCategoryById() {
        return openSession().createNativeQuery(Q_SUM_CATEGORY_BY_ID)
                            .addScalar(CategoryDto.CATEGORY_NAME, StringType.INSTANCE)
                            .addScalar(CategoryDto.NUMBER_OF_BOOKS, IntegerType.INSTANCE)
                            .setResultTransformer(Transformers.aliasToBean(CategoryDto.class)).getResultList();
    }

    @Override
    public int updateCategory(int categoryId, String categoryName) {
        Session session = getCurrentSession();
        Transaction transaction = session.beginTransaction();
        int query;
        query = session.createNativeQuery(Q_UPDATE_CATEGORY, Category.class).setParameter("categoryName", categoryName)
                       .setParameter("categoryId", categoryId).executeUpdate();
        transaction.commit();
        return query;
    }

    @Override
    public Category getById(int categoryId) {
        // return openSession().createNativeQuery(Q_BY_ID, Category.class).setParameter("categoryId", categoryId)
        // 		.uniqueResult();
        return QueryUtils.query(session -> session.createNativeQuery(Q_BY_ID, Category.class)
                                                  .setParameter("categoryId", categoryId)
                                                  .uniqueResult());
    }

    @Override
    public int deleteById(int categoryId) {
        Session session = openSession();
        Transaction transaction = session.beginTransaction();
        int query;
        query = session.createNativeQuery(Q_DELETE_CATEGORY_ID, Category.class).setParameter("categoryId", categoryId)
                       .executeUpdate();
        transaction.commit();
        return query;
    }

    @Override
    public int insertCategory(String categoryName) {
        Session session = openSession();

        Transaction transaction = session.beginTransaction();
        int query;
        query = session.createNativeQuery(Q_INSERT_CATEGORY, Category.class)
                       .setParameter("categoryName", categoryName)
                       .executeUpdate();
        transaction.commit();
        return query;
    }
}
