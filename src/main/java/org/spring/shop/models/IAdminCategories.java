package org.spring.shop.models;

import java.util.List;

import org.spring.shop.entities.Category;

public interface IAdminCategories {
	public List<Category> listCategories();
	public void addCategory(Category category);
	public void deleteCategory(Long id);
	public void modifyCategory(Category category);
	public Category getCategory(Long id);
}
