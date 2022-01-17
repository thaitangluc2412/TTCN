package service;

import java.util.List;

import bean.Category;
import bean.CategoryDto;
import dao.CategoryDao;
import dao.HibernateCategoryDao;

public class CategoryServiceImpl implements CategoryService {

    private final CategoryDao categoryDao;

    public CategoryServiceImpl() {
    	categoryDao = new HibernateCategoryDao();
    }

    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }

    @Override
    public List<CategoryDto> getCategoryById() {
    	
    	return categoryDao.getCategoryById();
    }
    
    @Override
    public int updateCategory(int categoryId, String categoryName) {
    	return categoryDao.updateCategory(categoryId, categoryName);
    }
    
    @Override
    public Category getById(int categoryId) {

    	return categoryDao.getById(categoryId);
    }
    
    @Override
    public int deleteById(int categoryId) {
    	return categoryDao.deleteById(categoryId);
    }
    
    @Override
    public int insertCategory(String categoryName) {
    	return categoryDao.insertCategory(categoryName);
    }
}
