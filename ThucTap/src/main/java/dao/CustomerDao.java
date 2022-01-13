package dao;

import persistence.Customer;

import java.util.List;

public interface CustomerDao {
    List<Customer> getAll();

    Customer get(String email, String password);
}
