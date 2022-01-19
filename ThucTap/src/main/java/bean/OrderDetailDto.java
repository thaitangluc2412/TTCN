package bean;

import java.time.LocalDateTime;
import java.util.StringJoiner;

public class OrderDetailDto {
    private String userName;
    private LocalDateTime orderDate;
    private Integer quantity;
    private Double profit;

    public OrderDetailDto() {
    }

    public OrderDetailDto(String userName, LocalDateTime orderDate, Integer quantity, Double profit) {
        this.userName = userName;
        this.orderDate = orderDate;
        this.quantity = quantity;
        this.profit = profit;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public LocalDateTime getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDateTime orderDate) {
        this.orderDate = orderDate;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Double getProfit() {
        return profit;
    }

    public void setProfit(Double profit) {
        this.profit = profit;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", OrderDetailDto.class.getSimpleName() + "[", "]")
                .add("userName='" + userName + "'")
                .add("orderDate=" + orderDate)
                .add("quantity=" + quantity)
                .add("profit=" + profit)
                .toString();
    }
}
