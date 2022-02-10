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
	public int updatePassword(Integer id,String newPassword) {
		return userDao.updatePassword(id, newPassword);
	}

	@Override
	public int updateProfile(String name, String address, String phoneNumber, String accountNumber, Integer id) {
		return userDao.updateProfile(name,address,phoneNumber,accountNumber,id);
	}

	@Override
	public boolean existUser(String email) {
		return userDao.existUser(email);
	}

	@Override
	public int insertUser(String email, String password, String name, String address, String phoneNumber,
			String accountNumber, int role) {
		return userDao.insertUser(email, password, name, address, phoneNumber, accountNumber, role);
	}
	
	@Override
	public int addtAuthor(String email, String password, String name, String address, String phoneNumber,
			String accountNumber) {
		return userDao.addtAuthor(email, password, name, address, phoneNumber, accountNumber);
	}
}
