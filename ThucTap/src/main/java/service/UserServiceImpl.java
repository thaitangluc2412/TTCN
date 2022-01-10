package service;

import bean.User;
import dao.HibernateUserDao;
import dao.UserDao;

import java.util.List;

public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    public UserServiceImpl() {
        userDao = new HibernateUserDao();
    }

    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }
    
    @Override
    public List<User> getAuthor() {
        return userDao.getAuthor();
    }
    
    @Override
    public List<User> getCustomer() {
        return userDao.getCustomer();
    }

    @Override
    public User getUser(String email, String password) {
        return userDao.getUser(email, password);
    }

	@Override
	public int getQuantityUser() {
		// TODO Auto-generated method stub
		return userDao.getQuantityUser();
	}
	
	@Override
	public int getQuantityAuthor() {
		return userDao.getQuantityAuthor();
	}

	@Override
	public User getProfile(Integer id) {
		// TODO Auto-generated method stub
		return userDao.getProfile(id);
	}
	
	@Override
	public void updatePassword(Integer id,String newPassword) {
		userDao.updatePassword(id, newPassword);
	}
}
