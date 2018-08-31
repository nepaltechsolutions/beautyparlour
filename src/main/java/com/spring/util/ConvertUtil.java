package com.spring.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.spring.entity.Contact;
import com.spring.entity.UserSession;
import com.spring.model.ContactModel;
import com.spring.model.UserSessionDTO;

public class ConvertUtil {

	private ConvertUtil() {

	}

	private static Logger logger = LoggerFactory.getLogger(ConvertUtil.class);

	public static List<UserSessionDTO> convertSessionList(List<UserSession> userSession) {
		List<UserSessionDTO> dtoList = new ArrayList<UserSessionDTO>();
		for (UserSession session : userSession) {
			dtoList.add(convertSession(session));
		}
		return dtoList;
	}

	public static UserSessionDTO convertSession(UserSession session) {
		SimpleDateFormat time = new SimpleDateFormat("HH:mm:ss");
		UserSessionDTO dto = new UserSessionDTO();
		dto.setUsername(session.getUser().getUsername());
		dto.setId(session.getId());
		dto.setSessionId(session.getSessionId());
		dto.setUserId(session.getUser().getId());
		dto.setUserType(session.getUser().getUserType());
		dto.setLastRequest(time.format(session.getLastRequest()));
		return dto;
	}

	
	public static Contact convertContactModeltoContact(ContactModel contactModel) {
		Contact contact = new Contact();
		contact.setContactStatus(contactModel.getContactStatus());
		contact.setEmail(contactModel.getEmail());
		contact.setFullName(contactModel.getFullName());
		contact.setMessage(contactModel.getMessage());
		contact.setSubject(contactModel.getSubject());
		
		return contact;
	}
	
	public static <E> List<E> convertIterableToList(Iterable<E> iter) {
		List<E> list = new ArrayList<E>();
		for (E item : iter) {
			list.add(item);
		}
		return list;
	}
	
	public static <T> T[] listtoArray(List<T> list) {
		
		T[] toR = (T[]) java.lang.reflect.Array.newInstance(list.get(0)
	                                           .getClass(), list.size());
	    for (int i = 0; i < list.size(); i++) {
	        toR[i] = list.get(i);
	    }
	    return toR;
	}
	
	
	


}
