package com.spring.entity;

import javax.persistence.Column;

import org.springframework.data.jpa.domain.AbstractPersistable;

public class Address extends AbstractPersistable<Long> {
	
	@Column(unique = true, nullable = false)
	private String username;
	
	@Column( nullable = false)
	private String fullname;

}
