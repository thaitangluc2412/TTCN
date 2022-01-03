package dao;

import bean.Book;


import java.util.List;

public interface BookDao {

    List<Book> getAll();

    List<Book> getNewReleaseBook();

    int getQuantity();
    
    List<Book> get2BookSeller();
<<<<<<< HEAD

    List<Book> getAll(String orderBy, String orderType);

    List<Book> getByTitle(String title);
=======
    
    List<Book> getBookByCategoryId(Integer categoryId);
    
    List<Book> getBookOrderByTitleASC();
    
    List<Book> getBookOrderByTitleDESC();
    
    List<Book> getBookOrderByPriceASC();
    
    List<Book> getBookOrderByPriceDESC();
    
>>>>>>> 2b6de3b (luc)
}
