package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Sessionp {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private long id;
	
	@Column
	private int sessionid;

	@Column
	private String title;

	@Column
	private String abbrevation;

	@Column
	private String status;

	@Column
	private int timeoffered;
	
	@Column
	private int capacity;
	
	@Column
	private String type;
	
	@Column
	private int length;
	
	@Column
	private String publishedAuthenticated;
	
	@Column
	private String publicViewPrivateSchedule;
	
	@Column
	private String privateViewPrivateSchedule;
	
	@Column
	private String cannotVieworSchedule;
	
	@Column
	private boolean isMultiDaySession;
	
	
	public Sessionp(int sessionid, String title, String abbrevation, String status, int timeoffered, int capacity,
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

	

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
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
