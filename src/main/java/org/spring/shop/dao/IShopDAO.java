package org.spring.shop.dao;

import java.util.List;

import org.spring.shop.entities.*;

public interface IShopDAO {
	public List<Category> listCategories();
	public void addCategory(Category category);
	public void deleteCategory(Long id);
	public void modifyCategory(Category category);
	public Category getCategory(Long id);
	
	public List<Product> listProducts();
	public void addProduct(Product product);
	public void deleteProduct(Long id);
	public void modifyProduct(Product product);
	public Product getProduct(Long id);
	
	public List<Brand> listBrands();
	
	public void addUser(User user);
}
