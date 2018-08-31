package com.spring.repositories;

import com.spring.entity.User;
import com.spring.model.UserType;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepository extends CrudRepository<User, Long>, JpaSpecificationExecutor<User> {

	@Query("select u from User u where u.username=?1")
	User findByUsername(String username);

	@Query("select u from User u where u.userType <>'Admin'")
	List<User> findAllUserExceptAdmin();

	// @Query("select u from User u where u.username <> (?1)")

	@Query("select u from User u where NOT u.username IN (?1)")
	List<User> findAllUserExceptDefaultAdmin(List<String> str);

	@Query("select u from User u order by u.username")
	List<User> findUser();

	@Query("select u from User u where u.userType=?1 order by u.username")
	List<User> listUserByType(UserType userType);

	@Query("select u from User u where u.id=?1 and u.userType=?2")
	User getAgentWithId(long agentId,UserType userType);

	@Query("select u from User u where u.username=?1")
	User getUserWithUsername(String username);
}
