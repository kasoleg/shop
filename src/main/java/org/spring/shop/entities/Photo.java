package org.spring.shop.entities;

import java.io.Serializable;

public class Photo implements Serializable {
	private Long id;
	private Product product;
	private String photo;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Photo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Photo(Product product, String photo) {
		super();
		this.product = product;
		this.photo = photo;
	}
}
