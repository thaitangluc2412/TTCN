package dao;

import bean.Book;
import bean.BookDto;

import java.time.LocalDate;
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
    
    Book getById(int Id);
    
    List<Book> getByAuthorId(Integer Id);
    
    List<Book> getByAuthorIdCurrentPage(int strimStart, int rows, int id);
    
    List<Book> getByAuthorIdAndTitle(int id, String searchKey);
    
    List<Book> getByAuthorIdAndTitleCurrentPage(int trimStart, int rows, int id, String searchKey);
    
    int deleteByBookId(Integer bookId);
    
    int insertBook(int categoryId, String title, String description, String image, Double price, LocalDate publishDate, Integer quantity);

    int updateBook(int categoryId, String title, String description, String image, Double price, LocalDate publishDate, Integer quantity, int bookId);

    boolean decreaseBook(Book book, int value);

    List<BookDto> getBookWithProfitByAuthorId(int authorId);
    
    List<BookDto> getBookWithProfitByAuthorIdCurrentPage(int trimStart, int rows, int authorId);
    
    List<BookDto> getBookWithProfitByAuthorIdBetweenTime(LocalDate startDate, LocalDate endDate, int authorId);
    
    List<BookDto> getBookWithProfitByAuthorIdBetweenTimeCurrentPage(int trimStart, int rows, LocalDate startDate, LocalDate endDate, int authorId);
    
    List<BookDto> getBookWithProfit();

    List<BookDto> getBookWithProfitBetweenTime(LocalDate startDate, LocalDate endDate);
    
    List<BookDto> getBookWithProfitBetweenTimeCurrentPage(int trimStart, int rows, LocalDate startDate, LocalDate endDate);
    
    List<BookDto> getBookWithProfitCurrentPage(int trimStart, int rows);

    boolean updateBookRating(Book book, int rating);
}
