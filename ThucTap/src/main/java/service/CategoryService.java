package service;

import java.util.List;

import bean.Category;
import bean.CategoryDto;

public interface CategoryService {
    List<Category> getAll();
    
    List<CategoryDto> getCategoryById();
}
