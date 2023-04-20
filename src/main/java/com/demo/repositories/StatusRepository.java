package com.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.demo.entities.Category;
import com.demo.entities.Status;


public interface StatusRepository extends CrudRepository<Status, Integer>{
	
	@Query(value ="from Status where statusId =:statusId ")
	public List<Status> findAllByStatusid(@Param("statusId") int statusId);
}
