package org.spring.shop.dao;

import java.util.List;

import org.spring.shop.entities.*;

public interface IShopDAO {
	public List<Category> listCategories();
	public void addCategory(Category category);
	public void deleteCategory(Long id);
	public void modifyCategory(Category category);
	public Category getCategory(Long id);
}
