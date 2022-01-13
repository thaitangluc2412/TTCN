package dao;

import persistence.Book;
import utils.CrudUtils;

import java.util.List;

public class HibernateBookDao extends AbstractHibernateDao implements BookDao {
    private static final String Q_GET_ALL = "SELECT * FROM book";

    @Override
    public List<Book> getAll() {
        return openSession().createNativeQuery(Q_GET_ALL, Book.class).getResultList();
    }

    @Override
    public boolean save(Book book) {
        return CrudUtils.save(book);
    }

    @Override
    public boolean update(Book book) {
        return CrudUtils.update(book);
    }

    @Override
    public boolean delete(Book book) {
        return CrudUtils.delete(book);
    }
}
