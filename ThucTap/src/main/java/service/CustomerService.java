package service;

import persistence.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getAll();

    Customer get(String email, String password);
}
