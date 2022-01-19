package dao;

import bean.Book;
import bean.BookDto;

import java.time.LocalDate;
import java.util.List;

public interface BookDao {

    List<Book> getAll();

    List<Book> getNewReleaseBook();
    
    Book getBookById(int id);

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
    
    Book getById(int Id);
    
    List<Book> getByAuthorId(Integer Id);
    
    int deleteByBookId(Integer bookId);
    
    int insertBook(int categoryId, String title, String description, String image, Double price, LocalDate publishDate, Integer quantity);

    int updateBook(int categoryId, String title, String description, String image, Double price, LocalDate publishDate, Integer quantity, int bookId);

    boolean decreaseBook(Book book, int value);

    List<BookDto> getBookWithProfitByAuthorId(int authorId);

}
