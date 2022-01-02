package bean;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "User")
public class User {

    @Id
    @Column(name = "UserID")
    private Integer userId;

    @Column(name = "Email")
    private String email;

    @Column(name = "UserPassword")
    private String userPassword;

    @Column(name = "Name")
    private String name;

    @Column(name = "Address")
    private String address;

    @Column(name = "PhoneNumber")
    private String phoneNumber;

    @Column(name = "AccountNumber")
    private String accountNumber;

    @Column(name = "Role")
    @Enumerated(EnumType.STRING)
    private Role role;

    @OneToMany(mappedBy = "user")
    private List<Review> reviews;

    @OneToMany(mappedBy = "user")
    private List<Order> orders;

    public User() {
    }

    public User(Integer userId,
                String email,
                String userPassword,
                String name,
                String address,
                String phoneNumber,
                String accountNumber,
                Role role) {
        this.userId = userId;
        this.email = email;
        this.userPassword = userPassword;
        this.name = name;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.accountNumber = accountNumber;
        this.role = role;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public List<Review> getReviews() {
        return reviews;
    }

    public void setReviews(List<Review> reviews) {
        this.reviews = reviews;
    }

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
               "userId=" + userId +
               ", email='" + email + '\'' +
               ", userPassword='" + userPassword + '\'' +
               ", name='" + name + '\'' +
               ", address='" + address + '\'' +
               ", phoneNumber='" + phoneNumber + '\'' +
               ", accountNumber='" + accountNumber + '\'' +
               ", role=" + role +
               '}';
    }

    public enum Role {
        Admin, Author, Customer
    }
}
