package service;

import dao.CustomerDao;
import dao.HibernateCustomerDao;
import persistence.Customer;

import java.util.List;

public class CustomerServiceImpl implements CustomerService{
    private final CustomerDao customerDao;

    public CustomerServiceImpl() {
        customerDao = new HibernateCustomerDao();
    }

    @Override
    public List<Customer> getAll() {
        return customerDao.getAll();
    }

    @Override
    public Customer get(String email, String password) {
        return customerDao.get(email, password);
    }
}
