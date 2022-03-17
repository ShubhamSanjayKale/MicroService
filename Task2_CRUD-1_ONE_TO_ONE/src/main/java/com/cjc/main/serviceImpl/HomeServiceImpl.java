package com.cjc.main.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.main.model.College;
import com.cjc.main.model.Student;
import com.cjc.main.repository.CollegeRepository;
import com.cjc.main.repository.StudentRepository;
import com.cjc.main.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	StudentRepository sr;

	@Autowired
	CollegeRepository cr;
	
	@Override
	public Student saveData(Student s) {
		
		return sr.save(s);
	}

	@Override
	public Student loginCheck(String us, String ps) {
		
		return sr.findByUnameAndPass(us,ps);
	}

	@Override
	public Iterable<Student> displayAll() {
		
		return sr.findAll();
	}

	@Override
	public Student editPage(int uid) {

		return sr.findByUid(uid);
	}

	@Override
	public void deleteStudent(Student s) {
		
		sr.delete(s);
	}

	@Override
	public Iterable<Student> searchByName(String nm) {

		return sr.findAllByName(nm);
	}
	
	@Override
	public College addCollege(College a) {

		return cr.save(a);
	}
	
	@Override
	public Iterable<College> displayAllCollege() {
		
		return cr.findAll();
	}

	@Override
	public College editCollegePage(int cid) {
		
		return cr.findByCid(cid);
	}

	@Override
	public College updateCollegeData(College c) {
		
		return cr.save(c);
	}

	@Override
	public void deleteCollege(College c) {
		
		cr.delete(c);
	}
}
