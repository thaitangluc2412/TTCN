package service;

import bean.Book;

import java.util.List;

public interface BookService {
<<<<<<< HEAD
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
=======
	List<Book> getAll();

	List<Book> getNewReleaseBook();

	int getQuantity();

	List<Book> get2BookSeller();

	List<Book> getBookByCategoryId(Integer categoryId);

	List<Book> getBookOrderByTitleASC();

	List<Book> getBookOrderByTitleDESC();

	List<Book> getBookOrderByPriceASC();

	List<Book> getBookOrderByPriceDESC();
>>>>>>> 2b6de3b (luc)
}
