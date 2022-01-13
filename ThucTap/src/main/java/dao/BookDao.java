package dao;

import persistence.Book;

import java.util.List;

public interface BookDao {
    List<Book> getAll();

    boolean save(Book book);

    boolean update(Book book);

    boolean delete(Book book);
}
