package dao;

import bean.Book;


import java.util.List;

public interface BookDao {

    List<Book> getAll();

    List<Book> getNewReleaseBook();

    int getQuantity();
    
    List<Book> getTwoBookSeller();

    List<Book> getAll(String orderBy, boolean orderType);

    List<Book> getByTitle(String title);
    
    List<Book> getBookByCategoryId(Integer categoryId);
    
    List<Book> getBookCategoryOrderBy(Integer categoryId, String orderBy, boolean orderType);
    
    List<Book> getBookCurrentPage(int trimStart, int rows);
}
