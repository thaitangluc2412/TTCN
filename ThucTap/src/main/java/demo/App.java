package demo;

import bean.BookDto;
import bean.OrderDetailDto;
import service.*;

import java.time.LocalDate;
import java.util.Collection;
import java.util.List;

public class App {

    private static UserService userService = new UserServiceImpl();
    private static BookService bookService = new BookServiceImpl();
    private static CategoryService categoryService = new CategoryServiceImpl();
    private static OrderService orderService = new OrderServiceImpl();
    private static ReviewService reviewService = new ReviewServiceImpl();
    private static BookUserService bookUserservice = new BookUserServiceImpl();
    private static OrderDetailService orderDetailService = new OrderDetailServiceImpl();
    
    private static LocalDate startDate = LocalDate.of(2022, 1, 1);
    private static LocalDate endDate = LocalDate.of(2023, 1, 1);

    public static void main(String[] args) {
        // Book book = bookService.getById(1);
        // System.out.println(book);
        // bookService.decreaseBook(book, 1);
        // System.out.println(book);
        List<BookDto> books = bookService.getBookWithProfitBetweenTimeCurrentPage(3,2,startDate, endDate);
        print(books);

    }

    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }
}
