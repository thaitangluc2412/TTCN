package dao;

import persistence.Author;

import java.util.List;

public class HibernateAuthorDao extends AbstractHibernateDao implements AuthorDao {

    private static final String Q_GET_ALL = "SELECT * FROM author";
    private static final String Q_GET_AUTHOR = "SELECT * FROM author\n" +
                                               "WHERE Email = :email AND Password = :password";

    @Override
    public List<Author> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, Author.class).getResultList();
    }

    @Override
    public Author get(String email, String password) {
        return openSession().createNativeQuery(Q_GET_AUTHOR, Author.class)
                            .setParameter("email", email)
                            .setParameter("password", password)
                            .uniqueResult();
    }
}
