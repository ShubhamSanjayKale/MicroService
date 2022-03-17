package com.cjc.main.service;

import com.cjc.main.model.College;
import com.cjc.main.model.Student;

public interface HomeService {

	public Student saveData(Student s);

	public Student loginCheck(String us, String ps);

	public Iterable<Student> displayAll();

	public College addCollege(College c);

	public Iterable<College> displayAllCollege();

	public Student editPage(int uid);

	public void deleteStudent(Student s);

	public College editCollegePage(int cid);

	public College updateCollegeData(College c);

	public void deleteCollege(College c);

	public Iterable<Student> searchByName(String nm);

}
