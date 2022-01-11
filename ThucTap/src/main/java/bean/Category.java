package bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "Category")
public class Category {

    @Id
    @Column(name = "CategoryID")
    private Integer categoryId;

    @Column(name = "Name")
    private String name;

    public Category() {
    }

    public Category(Integer categoryID, String name) {
        this.categoryId = categoryID;
        this.name = name;
    }

    public Integer getCategoryID() {
        return categoryId;
    }

    public void setCategoryID(Integer categoryID) {
        this.categoryId = categoryID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category [categoryID=" + categoryId + ", name=" + name + "]";
    }
}
