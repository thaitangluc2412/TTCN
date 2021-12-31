package service;

import java.util.List;

import bean.Book;

public interface BookService {
	List<Book> getAll();
	List<Book> getNewReleaseBook();
	int getQuantity();
}
