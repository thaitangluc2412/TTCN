package dao;

import bean.Category;

import java.util.List;

public class HibernateCategoryDao extends AbstractHibernateDao implements CategoryDao {
    private static final String Q_SIGN_IN = "";
    private static final String Q_GET_ALL = "SELECT * FROM Category";

    @Override
    public List<Category> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, Category.class).getResultList();
    }


}
