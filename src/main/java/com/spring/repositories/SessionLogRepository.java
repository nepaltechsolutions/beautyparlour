package com.spring.repositories;

import com.spring.entity.SessionLog;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface SessionLogRepository extends CrudRepository<SessionLog, Long>, JpaSpecificationExecutor<SessionLog> {

	@Query("select s from SessionLog s where s.sessionId=?1")
	SessionLog findBySessionId(String sessionId);

}
