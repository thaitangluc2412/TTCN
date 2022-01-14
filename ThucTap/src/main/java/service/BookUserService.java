package service;

public interface BookUserService {
	int insertBookUser(int bookId, int userId);
	
	int deleteBookUser(int bookId);
}
