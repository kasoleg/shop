package org.spring.shop.models;

import org.spring.shop.dao.IShopDAO;
import org.spring.shop.entities.Role;
import org.spring.shop.entities.User;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class UserImpl implements IUser {
	private IShopDAO dao;
	
	public void setDao(IShopDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public void addUser(User user) {
		dao.addUser(user);
	}

	@Override
	public User getUserByEmail(String email) {
		return dao.getUserByEmail(email);
	}
}
