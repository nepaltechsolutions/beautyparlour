package com.spring.api;

import com.spring.entity.Contact;
import com.spring.model.ContactStatus;

import java.util.List;

public interface IContactApi {
	
	Contact saveContact(Contact contact);

	Contact getContactWithId(long contactId);
	
	void deleteContactWithId(Long contactId);

	List<Contact> listContactWithContactStatus(ContactStatus contactStatus);
	
	List<Contact> listAllContactMessages();



}
