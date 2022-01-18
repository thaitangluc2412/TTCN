package dao;

import bean.User;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

import java.util.List;

import javax.transaction.Transactional;

public class HibernateUserDao extends AbstractHibernateDao implements UserDao {

    private static final String Q_SIGN_IN = "SELECT * FROM User WHERE Email = :email AND UserPassword = :password";
    private static final String Q_GET_ALL = "SELECT * FROM User";
    private static final String Q_QUANTITY_USER = "SELECT count(*) AS Quantity FROM User WHERE Role='Customer'";
    private static final String Q_QUANTITY_AUTHOR = "SELECT count(*) AS Quantity FROM User WHERE Role='Author'";
    private static final String Q_GET_AUTHOR = "SELECT * FROM User WHERE Role='Author'";
    private static final String Q_GET_CUSTOMER = "SELECT * FROM User WHERE Role='Customer'";
    private static final String Q_PROFILE = "SELECT * FROM User WHERE UserID= :userId";
    private static final String Q_UPDATE_PASSWORD = "UPDATE bookstore.User SET UserPassword = :newPassword WHERE UserID = :id";


    @Override
    public List<User> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, User.class).getResultList();
    }
    
    @Override
    public List<User> getAuthor() {
        return openSession().createNativeQuery(Q_GET_AUTHOR, User.class).getResultList();
    }
    
    @Override
    public List<User> getCustomer() {
        return openSession().createNativeQuery(Q_GET_CUSTOMER, User.class).getResultList();
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
        return (int) openSession().createNativeQuery(Q_QUANTITY_USER)
                                  .addScalar("Quantity", IntegerType.INSTANCE)
                                  .uniqueResult();
    }

    @Override
    public int getQuantityAuthor() {
        return (int) openSession().createNativeQuery(Q_QUANTITY_AUTHOR)
                                  .addScalar("Quantity", IntegerType.INSTANCE)
                                  .uniqueResult();
    }
    
    @Override
    public User getProfile(Integer userId) {
        return openSession().createNativeQuery(Q_PROFILE, User.class)
                            .setParameter("userId", userId, IntegerType.INSTANCE)
                            .uniqueResult();
    }
    
    @Override
//    @Transactional
    public int updatePassword(Integer id, String newPassword) {
    	Session session = getCurrentSession();
    	Transaction transaction = session.beginTransaction();
//    	User user= getProfile(id);
//    	
//    	user.setUserId(id);
//    	user.setUserPassword(newPassword);
//    	session.merge(user);
//    	transaction.commit();
//    	session.createNativeQuery(Q_UPDATE_PASSWORD,User.class).setParameter("newPassword", newPassword)
//										        .setParameter("id", id)
//										        .executeUpdate();
 
//    	session.update(Q_UPDATE_PASSWORD);
//    	session.createQuery(Q_UPDATE_PASSWORD)
//						        .setParameter("newPassword", newPassword)
//						        .setParameter("id", id)
//						        .executeUpdate();
    	
		int query;
		query = session.createNativeQuery(Q_UPDATE_PASSWORD, User.class)
				.setParameter("newPassword", newPassword)
		        .setParameter("id", id)
				.executeUpdate();
		transaction.commit();
		return query;
    }
    
}
