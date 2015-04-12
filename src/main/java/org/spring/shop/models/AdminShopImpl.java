package org.spring.shop.models;

import java.util.List;

import org.spring.shop.dao.IShopDAO;
import org.spring.shop.entities.Brand;
import org.spring.shop.entities.Category;
import org.spring.shop.entities.Product;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class AdminShopImpl implements IAdmin {
	private IShopDAO dao;
	
	public void setDao(IShopDAO dao) {
		this.dao = dao;
	}

	@Override
	public void addCategory(Category category) {
		dao.addCategory(category);
	}

	@Override
	public void deleteCategory(Long id) {
		dao.deleteCategory(id);
	}

	@Override
	public void modifyCategory(Category category) {
		dao.modifyCategory(category);
	}

	@Override
	public List<Category> listCategories() {
		return dao.listCategories();
	}

	@Override
	public Category getCategory(Long id) {
		return dao.getCategory(id);
	}

	@Override
	public List<Product> listProducts() {
		return dao.listProducts();
	}

	@Override
	public void addProduct(Product product) {
		dao.addProduct(product);
	}

	@Override
	public void deleteProduct(Long id) {
		dao.deleteProduct(id);
	}

	@Override
	public void modifyProduct(Product product) {
		dao.modifyProduct(product);
	}

	@Override
	public Product getProduct(Long id) {
		return dao.getProduct(id);
	}

	@Override
	public List<Brand> listBrands() {
		return dao.listBrands();
	}
}
