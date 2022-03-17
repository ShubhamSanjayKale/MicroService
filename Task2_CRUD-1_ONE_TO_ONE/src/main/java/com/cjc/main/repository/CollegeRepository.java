package com.cjc.main.repository;

import org.springframework.data.repository.CrudRepository;

import com.cjc.main.model.College;

public interface CollegeRepository extends CrudRepository<College, Integer>{

	public College findByCid(int cid);

}
