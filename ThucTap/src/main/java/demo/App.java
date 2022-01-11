package demo;

import service.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import bean.Book;
import bean.BookUser;
import bean.Category;
import bean.User;
import dao.BookUserDao;
import dao.HibernateBookUser;

public class App {

	private static UserService userService = new UserServiceImpl();
    private static BookService bookService = new BookServiceImpl();
    private static CategoryService categoryService = new CategoryServiceImpl();
    private static OrderService orderService = new OrderServiceImpl();
    private static ReviewService reviewService = new ReviewServiceImpl();
    private static BookUserService bookUserservice = new BookUserServiceImpl();
    
    private static LocalDate date = LocalDate.of(2020, 11, 21);

    public static void main(String[] args) {
    	
    }
    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }
}
