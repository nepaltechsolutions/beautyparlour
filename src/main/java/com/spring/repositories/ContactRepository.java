package com.spring.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.spring.entity.Contact;
import com.spring.model.ContactStatus;

public interface ContactRepository extends CrudRepository<Contact, Long>, JpaSpecificationExecutor<Contact> {

	@Query("select u from Contact u where u.contactStatus=?1 order by u.created asc") //desc
	List<Contact> listContactByContactStatus(ContactStatus contactStatus);
}
