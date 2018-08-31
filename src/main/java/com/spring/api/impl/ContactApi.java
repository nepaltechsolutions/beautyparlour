package com.spring.api.impl;

import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.api.IContactApi;
import com.spring.entity.Contact;
import com.spring.model.ContactStatus;
import com.spring.repositories.ContactRepository;
import com.spring.util.ConvertUtil;


@Transactional
@Service
public class ContactApi implements IContactApi {

	private final ContactRepository contactRepository;
	private  Logger logger = LoggerFactory.getLogger(this.getClass());	
	
	public ContactApi(ContactRepository contactRepository) {
		this.contactRepository = contactRepository;
	}
	
	
	@Override
	public Contact saveContact(Contact contact) {
		// TODO Auto-generated method stub
		Contact cnt=contactRepository.save(contact);
		return cnt;
	}

	@Override
	public Contact getContactWithId(long contactId) {
		// TODO Auto-generated method stub
		Optional<Contact> cnt=contactRepository.findById(contactId);
		return cnt.get();
	}

	@Override
	public void deleteContactWithId(Long contactId) {
		// TODO Auto-generated method stub
		contactRepository.deleteById(contactId);		
	}

	@Override
	public List<Contact> listContactWithContactStatus(ContactStatus contactStatus) {
		return contactRepository.listContactByContactStatus(contactStatus);
	}


	@Override
	public List<Contact> listAllContactMessages() {
		// TODO Auto-generated method stub
		Iterable<Contact> cont=contactRepository.findAll();
		return ConvertUtil.convertIterableToList(cont);
	}

}
