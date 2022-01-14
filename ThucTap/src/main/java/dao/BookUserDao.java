package dao;

public interface BookUserDao {
	int insertBookUser(int bookId, int userId);
	
	int deleteBookUser(int bookId);
}
