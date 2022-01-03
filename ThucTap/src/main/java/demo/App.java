package demo;

import java.util.List;

import bean.ReviewByNameDTO;
import bean.User;
import service.BookService;
import service.BookServiceImpl;
import service.ReviewServiceImpl;
import service.UserServiceImpl;

public class App {
	private static BookService itemService = new BookServiceImpl();
	
	
	public static void main(String[] args) {
		UserServiceImpl user = new UserServiceImpl();
		ReviewServiceImpl rv = new ReviewServiceImpl();
		List<ReviewByNameDTO> list = rv.getReviewByName();
		for(User u : list) {
			System.out.println(u);
		}
	}
}
