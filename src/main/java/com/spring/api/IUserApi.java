package com.spring.api;

import java.util.List;

import com.spring.entity.User;

public interface IUserApi {

	User saveUser(User user);
	
	List<User> findAll();


	User getUserWithId(long userId);
	

	void deleteUser(Long parseLong);

	User getUserWithUsername(String username);

	void saveUser();

}
