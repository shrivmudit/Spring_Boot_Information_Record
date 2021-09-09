package com.record;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface StudentRepo extends CrudRepository<Student, Long>{
	@Transactional
	@Modifying
	@Query(value = "update student set uid=?1, email_id=?2, first_name=?3, gender=?4, last_name=?5, number=?6, password=?7,uname=?8",
	nativeQuery = true)
void update(long UID, String email_id, String first_name,byte gender,  String last_name, String number,String password, String uname);

}
