package com.cjc.main.repository;

import org.springframework.data.repository.CrudRepository;

import com.cjc.main.model.Student;

public interface StudentRepository extends CrudRepository<Student, Integer> {

	public Student findByUnameAndPass(String us, String ps);

	public Student findByUid(int uid);

	public Iterable<Student> findAllByName(String nm);

}
