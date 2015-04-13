package org.spring.shop.entities;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Users")
public class User implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@NotEmpty
	@Size(min=1,max=255)
	private String name;
	@NotEmpty
	@Size(min=6,max=255)
	private String password;
	@NotEmpty
	@Size(max=100)
	private String email;
	@OneToMany
	@JoinColumn(name="user")
	private Collection<Role> roles;
	private Boolean actived;
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
	public Collection<Role> getRoles() {
		return roles;
	}
	public void setRole(Collection<Role> roles) {
		this.roles = roles;
	}
	public Boolean getActived() {
		return actived;
	}
	public void setActived(Boolean actived) {
		this.actived = actived;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String name, String password, String email,
			Collection<Role> roles) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.roles = roles;
	}
}
