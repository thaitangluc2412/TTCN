package dao;

import bean.User;

import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

import java.util.List;

public class HibernateUserDao extends AbstractHibernateDao implements UserDao {

    private static final String Q_SIGN_IN = "SELECT * FROM User WHERE Email = :email AND UserPassword = :password";
    private static final String Q_GET_ALL = "SELECT * FROM User";
    private static final String Q_QUANTITY_USER = "SELECT count(*) as Quantity FROM User WHERE Role='Customer'";
    private static final String Q_QUANTITY_AUTHOR = "SELECT count(*) as Quantity FROM User WHERE Role='Author'";
    
    @Override
    public List<User> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, User.class).getResultList();
    }

    @Override
    public User getUser(String email, String password) {
        return openSession().createNativeQuery(Q_SIGN_IN, User.class)
                            .setParameter("email", email, StringType.INSTANCE)
                            .setParameter("password", password, StringType.INSTANCE)
                            .uniqueResult();
    }

	@Override
	public int getQuantityUser() {
		return (int) openSession().createNativeQuery(Q_QUANTITY_USER).addScalar("Quantity", IntegerType.INSTANCE).uniqueResult();
	}

	@Override
	public int getQuantityAuthor() {
		return (int) openSession().createNativeQuery(Q_QUANTITY_AUTHOR).addScalar("Quantity", IntegerType.INSTANCE).uniqueResult();
	}
}
