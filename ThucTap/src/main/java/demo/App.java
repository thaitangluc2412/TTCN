package demo;

import service.*;

import java.util.Collection;

public class App {

    public static final AdminService adminService = new AdminServiceImpl();
    public static final AuthorService authorService = new AuthorServiceImpl();
    public static final CustomerService customerService = new CustomerServiceImpl();
    public static final BookService bookService = new BookServiceImpl();

    public static void main(String[] args) {

        // print(adminService.getAll());

        // System.out.println(adminService.get("admin", "admin"));

        // print(authorService.getAll());

        // print(customerService.getAll());

        // print(bookService.getAll());
    }

    private static <Element> void print(Collection<Element> elements) {
        elements.forEach(System.out::println);
    }
}
