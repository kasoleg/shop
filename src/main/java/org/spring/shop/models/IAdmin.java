package org.spring.shop.models;

import java.util.List;

import org.spring.shop.entities.Brand;
import org.spring.shop.entities.Category;
import org.spring.shop.entities.Product;

public interface IAdmin {
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
}
