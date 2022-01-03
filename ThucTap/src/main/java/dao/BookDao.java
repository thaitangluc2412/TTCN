package dao;

import bean.Book;


import java.util.List;

public interface BookDao {

    List<Book> getAll();

    List<Book> getNewReleaseBook();

    int getQuantity();
    
    List<Book> get2BookSeller();

    List<Book> getAll(String orderBy, String orderType);

    List<Book> getByTitle(String title);
}
