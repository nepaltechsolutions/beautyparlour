package com.spring.startup;

import java.util.Date;
import java.util.TimeZone;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.spring.controller.DemoController;
import com.spring.entity.User;
import com.spring.model.Status;
import com.spring.model.UserType;
import com.spring.repositories.UserRepository;
import com.spring.util.Authorities;

public class FirstAdminCreator {
	private final UserRepository userRepository;
	private final PasswordEncoder passwordEncoder;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	public FirstAdminCreator(UserRepository userRepository, PasswordEncoder encoder) {
		this.userRepository = userRepository;
		this.passwordEncoder = encoder;
	}
	public void create() {
		System.out.println("in create==>");
		
		
		User u = userRepository.findByUsername("admin");
		TimeZone tz = TimeZone.getTimeZone("Asia/Kathmandu");
		logger.debug("tz==>" + tz);
		logger.debug("tz.getId()==>" + tz.getID());
		if (u == null) {
			u = new User();
			u.setUsername("admin");
			u.setUserType(UserType.Admin);
			u.setAuthority(Authorities.ADMINISTRATOR + "," + Authorities.AUTHENTICATED);
			u.setPassword(passwordEncoder.encode("123456"));
			u.setCreated(new Date());
			u.setStatus(Status.Active);
			userRepository.save(u);
		}
		u = userRepository.findByUsername("sysadmin");
		if (u == null) {
			u = new User();
			u.setUsername("sysadmin");
			u.setUserType(UserType.Admin);
			u.setAuthority(Authorities.ADMINISTRATOR + "," + Authorities.AUTHENTICATED);
			u.setPassword(passwordEncoder.encode("123456"));
			u.setCreated(new Date());
			u.setStatus(Status.Active);
			userRepository.save(u);
		}
		System.out.println("pre customer create==>" + u);
		u = userRepository.findByUsername("user@gmail.com");
		System.out.println("post customer create==>");
		if (u == null) {
			u = new User();
			u.setUsername("user@gmail.com");
			u.setUserType(UserType.User);
			u.setAuthority(Authorities.USER + "," + Authorities.AUTHENTICATED);
			u.setPassword(passwordEncoder.encode("123456"));
			u.setCreated(new Date());
			u.setStatus(Status.Active);
			userRepository.save(u);
		}
	}

}
