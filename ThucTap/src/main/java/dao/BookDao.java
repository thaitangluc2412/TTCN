package dao;

import bean.Book;
import bean.BookDto;

import java.util.List;

public interface BookDao {
    List<Book> getAll();

    List<Book> getNewReleaseBook();

    int getQuantity();
    
    List<Book> get2BookSeller();
}
