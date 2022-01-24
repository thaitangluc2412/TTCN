package service;

import bean.Category;
import bean.CategoryDto;

import java.util.List;

public interface CategoryService {
    List<Category> getAll();
    
    List<CategoryDto> getCategoryById();
    
    int updateCategory(int categoryId, String categoryName);
    
    Category getById(int categoryId);
    
    boolean deleteById(int categoryId);
    
    int insertCategory(String categoryName);
}
