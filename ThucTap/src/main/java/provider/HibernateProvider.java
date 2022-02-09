package provider;

import bean.*;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;

import java.util.Properties;

public class HibernateProvider {

    private static SessionFactory sessionFactory;
    // private static String HIBERNATE_PROPERTIES_PATH = "hibernate.cfg.xml";

    private HibernateProvider() {
    }

    /**
     * XML Configuration
     */
	/*
	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			Configuration configuration = new Configuration();
			sessionFactory = configuration.configure(HIBERNATE_PROPERTIES_PATH).buildSessionFactory();
		}
		
		return sessionFactory;
	}*/

    /**
     * JAVA Configuration
     */
    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            Configuration configuration = new Configuration();

            configuration.addAnnotatedClass(User.class);
            configuration.addAnnotatedClass(Book.class);
            configuration.addAnnotatedClass(BookUser.class);
            configuration.addAnnotatedClass(Category.class);
            configuration.addAnnotatedClass(Order.class);
            configuration.addAnnotatedClass(OrderDetail.class);
            configuration.addAnnotatedClass(Review.class);
            configuration.addAnnotatedClass(BookUser.class);
            configuration.addAnnotatedClass(CategoryDto.class);

            sessionFactory = configuration.setProperties(getHibernateProps())
                                          .buildSessionFactory();
        }
        return sessionFactory;
    }
   
    private static Properties getHibernateProps() {
        Properties props = new Properties();

        props.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
        props.put(Environment.URL, "jdbc:mysql://localhost:3306/bookstore");
        props.put(Environment.USER, "root");
        props.put(Environment.PASS, "nguyenmanhviet");
        props.put(Environment.POOL_SIZE, 1000);
        props.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
        props.put(Environment.SHOW_SQL, "true");
        props.put(Environment.FORMAT_SQL, "true");
        props.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
        props.put(Environment.ENABLE_LAZY_LOAD_NO_TRANS, "true");

        return props;
    }
}	