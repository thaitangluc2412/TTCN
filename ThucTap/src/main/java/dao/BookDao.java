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
    
    List<Book> getByTitleCurrentPage(int trimStart, int rows, String title);
    
    List<Book> getByTitleAndCategory(String title, int categoryID);
    
    List<Book> getByTitleAndCategoryCurrentPage(int trimStart, int rows, String title, int categoryID);
    
    List<Book> getBookByCategoryId(Integer categoryId);
    
    List<Book> getBookCategoryOrderBy(Integer categoryId, String orderBy, boolean orderType);
    
    List<Book> getBookCurrentPage(int trimStart, int rows);
    
    List<Book> getBookByCategoryIDCurrentPage(int trimStart, int rows, int categoryID);

}
