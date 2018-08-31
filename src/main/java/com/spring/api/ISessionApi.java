package com.spring.api;

import com.spring.entity.User;
import com.spring.entity.UserSession;
import com.spring.model.UserSessionDTO;
import com.spring.session.UserDetailsWrapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ISessionApi {

	void registerNewSession(String sessionId, UserDetailsWrapper principal);

	void removeSession(String tokenKey);

	UserSession getUserSession(String sessionId);

	void refreshSession(String sessionId);

	List<UserSession> getAllUserSession(long userId, boolean includeExpiredSessions);

	void expireSession(String sessionId);

	long countActiveSessions();

	Page<User> findOnlineUsers(Pageable page);

	Page<UserSession> findActiveSessions(Pageable page);

	void registerNewSession(String sessionId, User principal);

	List<UserSessionDTO> getAllActiveUser();

}
