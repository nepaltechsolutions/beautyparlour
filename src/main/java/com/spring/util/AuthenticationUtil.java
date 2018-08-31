package com.spring.util;

import com.spring.entity.User;
import com.spring.session.UserDetailsWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class AuthenticationUtil {
	private static Logger logger = LoggerFactory.getLogger(AuthenticationUtil.class);
	public static final User getCurrentUser() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication == null) {
			return null;
		}
		Object principal = authentication.getPrincipal();
//		System.out.println("principal instance==>"+principal);
//		System.out.println("principal getName==>"+principal.getClass().getName());
//		System.out.println("principal getClassLoader==>"+principal.getClass().getClassLoader());
		if (principal instanceof UserDetailsWrapper) { 
			return ((UserDetailsWrapper) principal).getUser();
		}
		if (principal instanceof User) {
			return ((User) principal);
		}
		return null;
	}
}
