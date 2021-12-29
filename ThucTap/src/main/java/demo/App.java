package demo;

import java.util.List;

import bean.Book;
import service.BookService;
import service.BookServiceImpl;

public class App {
	private static BookService itemService = new BookServiceImpl();
	
	public static void main(String[] args) {
		List<Book> books = itemService.getAll();
		for (Book book: books) {
			System.out.println(book);
		}
	}
}
