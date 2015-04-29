package org.spring.shop.models;

import org.spring.shop.entities.Role;
import org.spring.shop.entities.User;

public interface IUser {
	public void addUser(User user);
	public User getUserByEmail(String email);
}
