package org.spring.shop.entities;

import java.io.Serializable;

public class User implements Serializable {
	private Long id;
	private String name;
	private String password;
	private String email;
	private Role role;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String name, String password, String email, Role role) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.role = role;
	}
}
