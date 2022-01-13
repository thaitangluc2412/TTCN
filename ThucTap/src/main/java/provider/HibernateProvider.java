package provider;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import persistence.*;

import java.util.Properties;

public class HibernateProvider {

    private static SessionFactory sessionFactory;

    private HibernateProvider() {
    }

    /**
     * JAVA Configuration
     */
    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            Configuration configuration = new Configuration();

            configuration.addAnnotatedClass(Admin.class);
            configuration.addAnnotatedClass(Author.class);
            configuration.addAnnotatedClass(Book.class);
            configuration.addAnnotatedClass(BookDetail.class);
            configuration.addAnnotatedClass(Category.class);
            configuration.addAnnotatedClass(Customer.class);
            configuration.addAnnotatedClass(Customer.class);
            configuration.addAnnotatedClass(Order.class);
            configuration.addAnnotatedClass(OrderDetail.class);
            configuration.addAnnotatedClass(Review.class);

            sessionFactory = configuration.setProperties(getHibernateProps())
                                          .buildSessionFactory();
        }
        return sessionFactory;
    }

    private static Properties getHibernateProps() {
        Properties props = new Properties();

        props.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
        props.put(Environment.URL, "jdbc:mysql://localhost:3306/bookstorev2");
        props.put(Environment.USER, "root");
        props.put(Environment.PASS, "anhvu_pro123");


        props.put(Environment.DIALECT, "org.hibernate.dialect.MySQL5Dialect");
        props.put(Environment.SHOW_SQL, "false");
        props.put(Environment.FORMAT_SQL, "true");
        props.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");

        return props;
    }
}