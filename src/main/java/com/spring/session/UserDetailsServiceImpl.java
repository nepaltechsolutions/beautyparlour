package com.spring.session;

import com.spring.entity.User;
import com.spring.repositories.UserRepository;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

@Service 
public class UserDetailsServiceImpl implements UserDetailsService {

	private final UserRepository userRepository;
	protected final Log logger = LogFactory.getLog(this.getClass());
	
	public UserDetailsServiceImpl(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {		
		logger.debug("in ========================>loadUserByUsername(String username)" );
		User u = userRepository.findByUsername(username.toLowerCase());
		logger.debug("u==>"+u);
		HttpServletRequest curRequest = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		logger.debug("curRequest==>"+curRequest);
		final StringBuilder msg = new StringBuilder();		
		msg.append(curRequest.getRemoteAddr());
		logger.debug("curRequest.getRemoteAddr()==>"+curRequest.getRemoteAddr());
		final String forwardedFor = curRequest.getHeader("X-Forwarded-For");
		logger.debug("forwardedFor==>"+forwardedFor);
		if (forwardedFor != null) {
			msg.append(", forwardedFor = ").append(forwardedFor);
		}
		if (u == null) {
			throw new UsernameNotFoundException("user doesnt exists");
		}
		logger.debug("end userDetailsServiceImpl==>");
		return new UserDetailsWrapper(u, AuthorityUtils.commaSeparatedStringToAuthorityList(u.getAuthority()),
				msg.toString());
	}

}
