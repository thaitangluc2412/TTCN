package dao;

import bean.Book;
import bean.User;
import utils.DateUtils;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;

import java.time.LocalDate;
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
    private static final String Q_UPDATE_PROFILE = "UPDATE bookstore.User SET Name = :name, Address = :address, PhoneNumber = :phoneNumber, AccountNumber = :accountNumber WHERE UserID = :id";
    private static final String Q_EXIST = "SELECT * FROM User WHERE Email = :email";
    private static final String Q_REGISTER = "INSERT INTO user (Email, UserPassword, Name, Address, PhoneNumber, AccountNumber, Role)\n"
            + "VALUES (:email, :password, :name, :address, :phoneNumber, :accountNumber, :role)";
    
    private static final String Q_REGISTER_AUTHOR = "INSERT INTO user (Email, UserPassword, Name, Address, PhoneNumber, AccountNumber, Role)\n"
            + "VALUES (:email, :password, :name, :address, :phoneNumber, :accountNumber, 'Author')";

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
    
    @Override
//  @Transactional
  public int updateProfile(String name,String address, String phoneNumber, String accountNumber,Integer id) {
  	Session session = getCurrentSession();
  	Transaction transaction = session.beginTransaction();
		int query;
		query = session.createNativeQuery(Q_UPDATE_PROFILE, User.class)
				.setParameter("name", name)
		        .setParameter("address", address)
		        .setParameter("phoneNumber", phoneNumber)
		        .setParameter("accountNumber", accountNumber)
		        .setParameter("id", id)
				.executeUpdate();
		transaction.commit();
		return query;
  } 
    @Override
    public boolean existUser(String email) {
        User u= openSession().createNativeQuery(Q_EXIST, User.class)
                            .setParameter("email", email, StringType.INSTANCE)
                            .uniqueResult();
        if(u==null) {
        	return false;
        }
        else return true;
    }
    
    @Override
    public int insertUser(String email, String password, String name, String address, String phoneNumber, String accountNumber, int role) {
        Session session = openSession();
        Transaction transaction = session.beginTransaction();
        int query;
        query = session.createNativeQuery(Q_REGISTER, Book.class)
        		.setParameter("email", email)		
        		.setParameter("password", password)
        		.setParameter("name", name)
		        .setParameter("address", address)
		        .setParameter("phoneNumber", phoneNumber)
		        .setParameter("accountNumber", accountNumber)
		        .setParameter("role", role)
		        .executeUpdate();
        transaction.commit();
        return query;
    }
    
    @Override
    public int addtAuthor(String email, String password, String name, String address, String phoneNumber,
    		String accountNumber) {
    	Session session = openSession();
        Transaction transaction = session.beginTransaction();
        int query;
        query = session.createNativeQuery(Q_REGISTER_AUTHOR, User.class)
        		.setParameter("email", email, StringType.INSTANCE)		
        		.setParameter("password", password, StringType.INSTANCE)
        		.setParameter("name", name, StringType.INSTANCE)
		        .setParameter("address", address, StringType.INSTANCE)
		        .setParameter("phoneNumber", phoneNumber, StringType.INSTANCE)
		        .setParameter("accountNumber", accountNumber, StringType.INSTANCE)
		        .executeUpdate();
        transaction.commit();
        return query;
    }
}
