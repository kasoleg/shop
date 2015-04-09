package org.spring.shop.entities;

import java.io.Serializable;

public class Specification implements Serializable {
	private Long id;
	private String name;
	private Product product;
	private String property;
	private String value;
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
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public Specification() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Specification(String name, Product product, String property,
			String value) {
		super();
		this.name = name;
		this.product = product;
		this.property = property;
		this.value = value;
	}
}
