package dao;

import bean.Category;
import bean.CategoryDto;

import java.util.List;

public interface CategoryDao {
    List<Category> getAll();
    
    List<CategoryDto> getCategoryById();
}
