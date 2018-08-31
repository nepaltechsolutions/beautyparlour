package com.spring.model;

public class SessionModel {

	private int sessionid;
	private String title;
	private String abbrevation;
	private String status;
	private int timeoffered;
	private int capacity;
	private String type;
	private int length;
	private String publishedAuthenticated;
	private String publicViewPrivateSchedule;
	private String privateViewPrivateSchedule;
	private String cannotVieworSchedule;
	private boolean isMultiDaySession;
	
	
	public SessionModel(int sessionid, String title, String abbrevation, String status, int timeoffered, int capacity,
			String type, int length, String publishedAuthenticated, String publicViewPrivateSchedule,
			String privateViewPrivateSchedule, String cannotVieworSchedule, boolean isMultiDaySession) {
		super();
		this.sessionid = sessionid;
		this.title = title;
		this.abbrevation = abbrevation;
		this.status = status;
		this.timeoffered = timeoffered;
		this.capacity = capacity;
		this.type = type;
		this.length = length;
		this.publishedAuthenticated = publishedAuthenticated;
		this.publicViewPrivateSchedule = publicViewPrivateSchedule;
		this.privateViewPrivateSchedule = privateViewPrivateSchedule;
		this.cannotVieworSchedule = cannotVieworSchedule;
		this.isMultiDaySession = isMultiDaySession;
	}

	public int getSessionid() {
		return sessionid;
	}

	public void setSessionid(int sessionid) {
		this.sessionid = sessionid;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAbbrevation() {
		return abbrevation;
	}
	public void setAbbrevation(String abbrevation) {
		this.abbrevation = abbrevation;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getTimeoffered() {
		return timeoffered;
	}
	public void setTimeoffered(int timeoffered) {
		this.timeoffered = timeoffered;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public String getPublishedAuthenticated() {
		return publishedAuthenticated;
	}

	public void setPublishedAuthenticated(String publishedAuthenticated) {
		this.publishedAuthenticated = publishedAuthenticated;
	}

	public String getPublicViewPrivateSchedule() {
		return publicViewPrivateSchedule;
	}

	public void setPublicViewPrivateSchedule(String publicViewPrivateSchedule) {
		this.publicViewPrivateSchedule = publicViewPrivateSchedule;
	}

	public String getPrivateViewPrivateSchedule() {
		return privateViewPrivateSchedule;
	}

	public void setPrivateViewPrivateSchedule(String privateViewPrivateSchedule) {
		this.privateViewPrivateSchedule = privateViewPrivateSchedule;
	}

	public String getCannotVieworSchedule() {
		return cannotVieworSchedule;
	}

	public void setCannotVieworSchedule(String cannotVieworSchedule) {
		this.cannotVieworSchedule = cannotVieworSchedule;
	}

	public boolean isMultiDaySession() {
		return isMultiDaySession;
	}

	public void setMultiDaySession(boolean isMultiDaySession) {
		this.isMultiDaySession = isMultiDaySession;
	}
	
}
