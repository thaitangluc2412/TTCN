package service;

import java.util.List;

import bean.Category;
import bean.CategoryDto;

public interface CategoryService {
    List<Category> getAll();
    
    List<CategoryDto> getCategoryById();
    
    int updateCategory(int categoryId, String categoryName);
    
    Category getById(int categoryId);
    
    int deleteById(int categoryId);
    
    int insertCategory(String categoryName);
}
