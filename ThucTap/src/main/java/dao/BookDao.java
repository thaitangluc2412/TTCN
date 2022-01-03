package dao;

import bean.Book;

import java.util.List;

public interface BookDao {
	List<Book> getAll();
	List<Book> getNewReleaseBook();
	int getQuantity();
}
