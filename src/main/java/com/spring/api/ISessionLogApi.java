package com.spring.api;

import com.spring.entity.SessionLog;
import com.spring.entity.User;

import java.util.List;

public interface ISessionLogApi {

	void logUserLoggedIn(long userId, String sessionId, String remoteAddress);

	void logUserLoggedOut(long userId, String sessionId);

	long getTotalOnlineUsers();

	List<SessionLog> getUserHistory(long userId);

	void endUserSession(long userId);

	String getUserAccountActivity();

	String getUserAccountActivity(User u);
}
