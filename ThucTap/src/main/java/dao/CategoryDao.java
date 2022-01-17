package dao;

import bean.Category;
import bean.CategoryDto;

import java.util.List;

public interface CategoryDao {
    List<Category> getAll();
    
    List<CategoryDto> getCategoryById();
    
    int updateCategory(int categoryId, String categoryName);
    
    Category getById(int categoryId);
    
    int deleteById(int categoryId);
    
    int insertCategory(String categoryName);
}
