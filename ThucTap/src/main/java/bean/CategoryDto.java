package bean;

public class CategoryDto {
    public static final String CATEGORY_NAME = "name";
    public static final String NUMBER_OF_BOOKS = "numberOfBooks";

    private String name;
    private Integer numberOfBooks;

    public CategoryDto() {
    }

    public CategoryDto(String name, Integer numberOfBooks) {
        this.name = name;
        this.numberOfBooks = numberOfBooks;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNumberOfBooks() {
        return numberOfBooks;
    }

    public void setNumberOfBooks(Integer numberOfBooks) {
        this.numberOfBooks = numberOfBooks;
    }

    @Override
    public String toString() {
        return "CategoryDto [name=" + name + ", numberOfBooks=" + numberOfBooks + "]";
    }


}
