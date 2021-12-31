package bean;

import bean.User.Role;

public class ReviewByNameDTO {
    String name;
    Role role;
    Review review;

    public ReviewByNameDTO() {
    }

    public ReviewByNameDTO(String name, Role role, Review review) {
        this.name = name;
        this.role = role;
        this.review = review;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Review getReview() {
        return review;
    }

    public void setReview(Review review) {
        this.review = review;
    }

    @Override
    public String toString() {
        return "ReviewByNameDTO{" +
               "name='" + name + '\'' +
               ", role=" + role +
               ", review=" + review +
               '}';
    }
}
