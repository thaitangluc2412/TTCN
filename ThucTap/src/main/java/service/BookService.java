package service;

import bean.Book;

import java.util.List;

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
    List<Book> getAll(String orderBy, String orderType);

    List<Book> getByTitle(String title);
}
