package service;

import bean.User;

import java.util.List;

public interface UserService {
    List<User> getAll();
    
    List<User> getAuthor();
    
    List<User> getCustomer();
    
    User getUser(String email, String password);
    
    int getQuantityUser();
    
    int getQuantityAuthor();
    
	User getProfile(Integer userId);
	
	int updatePassword(Integer id, String newPassword);
	
	int updateProfile(String name, String address, String phoneNumber, String accountNumber, Integer id);
	
	boolean existUser(String email);
	
	int insertUser( String email, String password, String name, String address, String phoneNumber, String accountNumber, int role);
	
	int addtAuthor(String email, String password, String name, String address, String phoneNumber, String accountNumber);
 
}
