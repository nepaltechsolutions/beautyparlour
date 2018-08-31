package com.spring.entity;

import com.spring.model.Status;
import com.spring.model.UserType;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
public class User extends AbstractEntity<Long> {

	private static final long serialVersionUID = 1L;

	@Column(unique = true, nullable = false)
	private String username;


	@Column(nullable = false)
	private String password;

	@Column(nullable = false)
	private UserType userType;

	@Column(nullable = false)
	private String authority;

	@Column(nullable = false)
	private Status status;

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserType getUserType() {
		return userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}


	

}
