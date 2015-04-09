package org.spring.shop.entities;

import java.io.Serializable;

public class Category implements Serializable {
	private Long id;
	private String name;
	private Long rating;
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
	public Long getRating() {
		return rating;
	}
	public void setRating(Long rating) {
		this.rating = rating;
	}
	public Category() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Category(String name, Long rating) {
		super();
		this.name = name;
		this.rating = rating;
	}
}
