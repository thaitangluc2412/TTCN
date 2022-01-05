package dao;

import bean.Category;
import bean.CategoryDto;

import java.util.List;

import org.hibernate.transform.Transformers;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

public class HibernateCategoryDao extends AbstractHibernateDao implements CategoryDao {
    private static final String Q_SIGN_IN = "";
    private static final String Q_GET_ALL = "SELECT * FROM Category ORDER BY CategoryId";
    
    private static String Q_SUM_CATEGORY_BY_ID = "SELECT ct.Name " + CategoryDto.CATEGORY_NAME
    		+ ", \n " + "count(ct.CategoryId) " + CategoryDto.NUMBER_OF_BOOKS 
    		+ "  \n " + "FROM Category ct\n"
    		+ "JOIN Book bo\n"
    		+ "ON ct.CategoryId = bo.CategoryId\n"
    		+ "GROUP BY ct.CategoryId;";

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
}
