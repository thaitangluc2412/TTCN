package service;

import bean.User;

import java.util.List;

public interface UserService {
    List<User> getAll();
    
    List<User> getAuthor();
    
    User getUser(String email, String password);
    
    int getQuantityUser();
    
    int getQuantityAuthor();
    
}
