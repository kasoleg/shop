package org.spring.shop.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Orders")
public class Order implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@ManyToOne
	@JoinColumn(name="product")
	private Product product;
	@ManyToOne
	@JoinColumn(name="user")
	private User user;
	@NotEmpty
	private Integer quontity;
	private Date time;
	@NotEmpty
	@Size(max=50)
	private String phone;
	@NotEmpty
	private String address;
	private Boolean paid;
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
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Integer getQuontity() {
		return quontity;
	}
	public void setQuontity(Integer quontity) {
		this.quontity = quontity;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Boolean getPaid() {
		return paid;
	}
	public void setPaid(Boolean paid) {
		this.paid = paid;
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Order(Product product, User user, Integer quontity, Date time,
			String phone, String address, Boolean paid) {
		super();
		this.product = product;
		this.user = user;
		this.quontity = quontity;
		this.time = time;
		this.phone = phone;
		this.address = address;
		this.paid = paid;
	}
}
