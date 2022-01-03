package demo;

import service.*;

import java.util.Collection;


public class App {

    private static UserService userService = new UserServiceImpl();
    private static BookService bookService = new BookServiceImpl();
    private static CategoryService categoryService = new CategoryServiceImpl();
    private static OrderService orderService = new OrderServiceImpl();
    private static ReviewService reviewService = new ReviewServiceImpl();

    public static void main(String[] args) {
        // System.out.println(bookService.getAll(BookService.PRICE, BookService.ASC));
        print(bookService.getByTitle("Great"));
    }

    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }
}
