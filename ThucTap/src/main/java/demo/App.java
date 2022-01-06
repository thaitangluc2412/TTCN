package demo;

import service.*;

import java.util.Collection;
import java.util.List;

import bean.Book;
import bean.BookUser;
import bean.User;

public class App {

	private static UserService userService = new UserServiceImpl();
    private static BookService bookService = new BookServiceImpl();
    private static CategoryService categoryService = new CategoryServiceImpl();
    private static OrderService orderService = new OrderServiceImpl();
    private static ReviewService reviewService = new ReviewServiceImpl();


    public static void main(String[] args) {
       List<Book> books = bookService.getByAuthorId(3);
       print(books);
       
    }
    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }
}
