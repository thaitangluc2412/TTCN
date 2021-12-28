package dao;

import bean.User;
import org.hibernate.type.StringType;

import java.util.List;

public class HibernateUserDao extends AbstractHibernateDao implements UserDao {

    private static final String Q_SIGN_IN = "";
    private static final String Q_GET_ALL = "SELECT * FROM User WHERE Email = :email AND UserPassword = :password";

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
}
