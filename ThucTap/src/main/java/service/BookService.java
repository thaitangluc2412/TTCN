package service;

import persistence.Book;

import java.util.List;

public interface BookService {
    List<Book> getAll();

    boolean save(Book book);

    boolean update(Book book);

    boolean delete(Book book);
}
