package service;

import bean.Book;
import bean.BookDto;
import dao.BookDao;
import dao.HibernateBookDao;

import java.time.LocalDate;
import java.util.List;

public class BookServiceImpl implements BookService {
    private BookDao bookDao;

    public BookServiceImpl() {
        bookDao = new HibernateBookDao();
    }

    @Override
    public List<Book> getAll() {
        return bookDao.getAll();
    }

    @Override
    public List<Book> getNewReleaseBook() {
        return bookDao.getNewReleaseBook();
    }

    @Override
    public int getQuantity() {
        return bookDao.getQuantity();
    }

    @Override
    public List<Book> get2BookSeller() {
        return bookDao.getTwoBookSeller();
    }

    @Override
    public List<Book> getAll(String orderBy, boolean orderType) {
        return bookDao.getAll(orderBy, orderType);
    }

    @Override
    public List<Book> getByTitle(String title) {
        return bookDao.getByTitle(title);
    }

    @Override
    public List<Book> getByTitleCurrentPage(int trimStart, int rows, String title) {
        return bookDao.getByTitleCurrentPage(trimStart, rows, title);
    }

    @Override
    public List<Book> getByTitleAndCategory(String title, int categoryID) {
        return bookDao.getByTitleAndCategory(title, categoryID);
    }

    @Override
    public List<Book> getByTitleAndCategoryCurrentPage(int trimStart, int rows, String title, int categoryID) {
        return bookDao.getByTitleAndCategoryCurrentPage(trimStart, rows, title, categoryID);
    }

    @Override
    public List<Book> getByTitleAndCurrentPage(int trimStart, int rows, String title) {
        return bookDao.getByTitleCurrentPage(trimStart, rows, title);
    }

    @Override
    public List<Book> getBookByCategoryId(Integer categoryId) {
        return bookDao.getBookByCategoryId(categoryId);
    }

    @Override
    public List<Book> getBookCategoryOrderBy(Integer categoryId, String orderBy, boolean orderType) {
        return bookDao.getBookCategoryOrderBy(categoryId, orderBy, orderType);
    }

    @Override
    public List<Book> getBookCurrentPage(int trimStart, int rows) {
        return bookDao.getBookCurrentPage(trimStart, rows);
    }

    @Override
    public List<Book> getBookByCategoryIDCurrentPage(int trimStart, int rows, int categoryID) {
        return bookDao.getBookByCategoryIDCurrentPage(trimStart, rows, categoryID);
    }

    @Override
    public Book getById(int Id) {
        return bookDao.getById(Id);
    }

    @Override
    public List<Book> getByAuthorId(int Id) {
        return bookDao.getByAuthorId(Id);
    }

    @Override
    public int deleteByBookId(Integer bookId) {
        return bookDao.deleteByBookId(bookId);
    }

    @Override
    public int insertBook(int categoryId, String title, String description, String image, Double price,
                          LocalDate publishDate, Integer quantity) {
        return bookDao.insertBook(categoryId, title, description, image, price, publishDate, quantity);
    }

    @Override
    public int updateBook(int categoryId, String title, String description, String image, Double price,
                          LocalDate publishDate, Integer quantity, int bookId) {
        return bookDao.updateBook(categoryId, title, description, image, price, publishDate, quantity, bookId);
    }

    @Override
    public boolean decreaseBook(Book book, int value) {
        return bookDao.decreaseBook(book, value);
    }

    @Override
    public List<BookDto> getBookWithProfitByAuthorId(int authorId) {
        return bookDao.getBookWithProfitByAuthorId(authorId);
    }


}
