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
    private int categoryID;
	
	@Column(name= "Name")
    private String name;

    public Category() {
    }

    public Category(int categoryID, String name) {
        this.categoryID = categoryID;
        this.name = name;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Category [categoryID=" + categoryID + ", name=" + name + "]";
    }


}
