package service;


import java.util.List;
import bean.Book;

public interface BookService {
	
    String ASC = "ASC";
    String DESC = "DESC";
    String TITLE = "Title";
    String PRICE = "Price";

    List<Book> getAll();

    List<Book> getNewReleaseBook();

    int getQuantity();

    List<Book> get2BookSeller();


    /**
     * Gets all book.
     *
     * @param orderBy   order by BookService.TITLE or BookService.PRICE
     * @param orderType order type BookService.ASC or BookService.DESC
     * @return all books
     */
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
