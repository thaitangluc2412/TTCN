package demo;

import bean.BookDto;
import bean.OrderDetailDto;
import service.*;

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

    public static void main(String[] args) {
        // Book book = bookService.getById(1);
        // System.out.println(book);
        // bookService.decreaseBook(book, 1);
        // System.out.println(book);
        List<BookDto> books = bookService.getBookWithProfitByAuthorId(13);
        print(books);

        List<OrderDetailDto> orderDetailDtos = orderDetailService.getOrderDetailDtoByBookId(1);
        print(orderDetailDtos);

    }

    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }
}
