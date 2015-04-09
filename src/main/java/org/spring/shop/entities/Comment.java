package org.spring.shop.entities;

import java.io.Serializable;

public class Comment implements Serializable {
	private Long id;
	private String text;
	private User user;
	private Integer mark;
	private Product product;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getMark() {
		return mark;
	}
	public void setMark(Integer mark) {
		this.mark = mark;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(String text, User user, Integer mark, Product product) {
		super();
		this.text = text;
		this.user = user;
		this.mark = mark;
		this.product = product;
	}
}
