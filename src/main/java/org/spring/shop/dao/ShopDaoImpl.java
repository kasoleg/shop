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
		Query query = em.createQuery("select c from Categories c");
		return query.getResultList();
	}

}
