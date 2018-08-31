package com.spring.api.impl;

import com.spring.api.IUserApi;
import com.spring.entity.User;
import com.spring.model.Status;
import com.spring.model.UserType;
import com.spring.repositories.UserRepository;
import com.spring.util.Authorities;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import java.util.Date;
import java.util.List;
import java.util.TimeZone;


@Transactional
@Service
public class UserApi implements IUserApi {

	private final UserRepository userRepository;

	private  Logger logger = LoggerFactory.getLogger(this.getClass());

	public UserApi(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Override
	public User saveUser(User user) {
		logger.debug("getCurrentTransactionName==>"+TransactionSynchronizationManager.getCurrentTransactionName());
		logger.debug("isSynchronizationActive==>"+TransactionSynchronizationManager.isSynchronizationActive());
		logger.debug("getResourceMap==>"+TransactionSynchronizationManager.getResourceMap());
		logger.debug("getSynchronizations==>"+TransactionSynchronizationManager.getSynchronizations());
		logger.debug("isActualTransactionActive==>"+TransactionSynchronizationManager.isActualTransactionActive());
		User u = userRepository.save(user);
		return u;
	}




	@Override
	public User getUserWithUsername(String username) {
		return userRepository.getUserWithUsername(username);

	}






	@Override
	public void deleteUser(Long userId) {
		userRepository.delete(userRepository.findById(userId).get());
	}




	@Override
	public void saveUser(){
		User u= new User();
		u.setUsername("app12345@gmail.com");
		u.setUserType(UserType.User);
		u.setAuthority(Authorities.USER + "," + Authorities.AUTHENTICATED);
		u.setPassword("ramesh@g.com");
		u.setCreated(new Date());
		u.setStatus(Status.Active);
		TimeZone tz = TimeZone.getTimeZone("Asia/Kathmandu");
		userRepository.save(u);
		
		}
	
	@Override
	public User getUserWithId(long userId) {
		return userRepository.findById(userId).get();

	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		
		return userRepository.findUser();
	}


}
