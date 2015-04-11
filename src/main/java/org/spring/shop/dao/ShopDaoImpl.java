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

}
