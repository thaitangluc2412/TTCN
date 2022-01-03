package service;

import java.util.List;

import bean.Book;
import bean.BookDto;

public interface BookService {
	List<Book> getAll();
	List<Book> getNewReleaseBook();
	int getQuantity();
	List<Book> get2BookSeller();
}
