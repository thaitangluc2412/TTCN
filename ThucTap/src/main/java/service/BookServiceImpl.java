package service;

import dao.BookDao;
import dao.HibernateBookDao;
import persistence.Book;

import java.util.List;

public class BookServiceImpl implements BookService{
    private final BookDao bookDao;

    public BookServiceImpl() {
        bookDao = new HibernateBookDao();
    }

    @Override
    public List<Book> getAll() {
        return bookDao.getAll();
    }

    @Override
    public boolean save(Book book) {
        return bookDao.save(book);
    }

    @Override
    public boolean update(Book book) {
        return bookDao.update(book);
    }

    @Override
    public boolean delete(Book book) {
        return bookDao.delete(book);
    }
}
