package org.spring.shop.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.spring.shop.entities.*;

public class ShopDaoImpl implements IShopDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Category> listCategories() {
		Query query = em.createQuery("select c from Category c");
		return query.getResultList();
	}

	@Override
	public void addCategory(Category category) {
		//if (em.find(Category.class, (Object)category.getName()) == null)??????????????????????????????????????????
			em.persist(category);
	}

	@Override
	public void deleteCategory(Long id) {
		Category category = em.find(Category.class, id);
		em.remove(category);
	}

	@Override
	public void modifyCategory(Category category) {
		em.merge(category);
	}

	@Override
	public Category getCategory(Long id) {
		return em.find(Category.class, id);
	}

	@Override
	public List<Product> listProducts() {
		Query query = em.createQuery("select p from Product p");
		return query.getResultList();
	}

	@Override
	public void addProduct(Product product) {
		em.persist(product);
	}

	@Override
	public void deleteProduct(Long id) {
		Product product = em.find(Product.class, id);
		em.remove(product);
	}

	@Override
	public void modifyProduct(Product product) {
		em.merge(product);
	}

	@Override
	public Product getProduct(Long id) {
		return em.find(Product.class, id);
	}

	@Override
	public List<Brand> listBrands() {
		Query query = em.createQuery("select b from Brand b");
		return query.getResultList();
	}

}
