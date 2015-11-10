/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import com.opensymphony.xwork2.ActionSupport;
import java.util.List;


/**
 *
 * @author ivan93
 */
public class CategoryAction extends ActionSupport{
    
  private List<CategoryModel> categories;
    private CategoryService categoryService=new CategoryService();
    private CategoryModel category;
    private int id;
    
    public List<CategoryModel> getCategories() {
        return categories;
    }

    public void setCategories(List<CategoryModel> categories) {
        this.categories = categories;
    }

    public CategoryService getCategoryService() {
        return categoryService;
    }

    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    public CategoryModel getCategory() {
        return category;
    }

    public void setCategory(CategoryModel category) {
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
  
    
    public String list(){
        categories=categoryService.list();
        return SUCCESS;
    }
    
    public String add(){
        categoryService.add(category);
        return SUCCESS;
    }
    
    public String update(){
        categoryService.update(category);
        return SUCCESS;
    }
    
    public String delete(){
        categoryService.deleteById(id);
        return SUCCESS;
    }
    
    public String addInput(){
        return INPUT;
    }
    
    public String updateInput(){
        this.category=this.categoryService.loadById(id);
        return INPUT;
    }
    
  
    
    
    
}
