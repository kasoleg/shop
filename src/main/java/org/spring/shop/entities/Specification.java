package org.spring.shop.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Specifications")
public class Specification implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@Size(max=255)
	private String name;
	@ManyToOne
	@JoinColumn(name="product")
	private Product product;
	@NotEmpty
	@Size(max=255)
	private String property;
	@NotEmpty
	@Size(max=255)
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
