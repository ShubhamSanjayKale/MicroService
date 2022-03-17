package com.cjc.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.main.model.College;
import com.cjc.main.model.Student;
import com.cjc.main.service.HomeService;

@Controller
public class HomeController {

	@Autowired
	HomeService ss;
	
	@RequestMapping("/")
	public String prelogin()
	{
		return "login";
	}
	
	@RequestMapping("/reg")
	public String preregister()
	{
		return "register";
	}
	
	@RequestMapping("/registerdata")
	public String registerStudent(@ModelAttribute Student s)
	{
		Student stu=ss.saveData(s);
		if(stu!=null)
		{
			return "login";
		}
		else
		{
			return "register";
		}
	}

	@RequestMapping("/log")
	public String postLogin(@RequestParam("uname") String us, @RequestParam("password") String ps, Model m )
	{
		Student stu=ss.loginCheck(us,ps);
		
		Iterable<Student> list=ss.displayAll();
		
		if(stu!=null)
		{
			m.addAttribute("data", list);
			return "success";
		}
		else
		{
			return "login";
		}
	}	

	@RequestMapping("/edit")
	public String editPage(@RequestParam("uid") int uid,Model m)
	{
		Student stu=ss.editPage(uid);
		if(stu!=null)
		{
			m.addAttribute("data", stu);	
			return "edit";
		}
		else
		{
			return "success";
		}
		
	}
	
	@RequestMapping("/update")
	public String updatePage(@ModelAttribute Student s,Model m)
	{
		Student stu=ss.saveData(s);
		
		Iterable<Student> slist=ss.displayAll();
		
		if(stu!=null)
		{
			m.addAttribute("data", slist);
			return "success";
		}
		else
		{
			return "edit";
		}
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@ModelAttribute Student s,Model m)
	{
		ss.deleteStudent(s);
		Iterable<Student> slist=ss.displayAll();
		m.addAttribute("data", slist);
		return "success";
	}

//	Search by Name
	@RequestMapping("/search")
	public String search(Model m)
	{
		Iterable<Student> slist=ss.displayAll();
		if(slist!=null)
		{
			m.addAttribute("data", slist);
			return "search_byname";
		}
		else
		{
			return "success";
		}
	}
	
	@RequestMapping("/searchByName")
	public String searchByName(@RequestParam("name") String nm,Model m)
	{
		Iterable<Student> slist= ss.searchByName(nm);
		m.addAttribute("data", slist);
		return "search_byname";
	}
	
	
//	College Controller
	@RequestMapping("/addcollege")
	public String preAddCollegePage()
	{
		return "register_college";
	}
	
	@RequestMapping("/registercollege")
	public String AddCollegeData(@ModelAttribute College c)
	{
		College clg=ss.addCollege(c);
		if(clg!=null)
		{
			return "login";
		}
		else
		{
			return "register_college";
		}
	}
	
	@RequestMapping("/viewcollege")
	public String viewCollegeData(Model m)
	{
		Iterable<College> clist=ss.displayAllCollege();
		if(clist!=null)
		{
			m.addAttribute("data", clist);
			return "view_college";
		}
		else
		{
			return "success";
		}		
	}
	
	@RequestMapping("/edit_college")
	public String editCollegePage(@RequestParam("cid") int cid,Model m)
	{
		College clg=ss.editCollegePage(cid);
		if(clg!=null)
		{
			m.addAttribute("data", clg);
			return "edit_college";
		}
		else
		{
			return "view_college";
		}
	}
	
	@RequestMapping("/update_college")
	public String updateCollegeData(@ModelAttribute College c,Model m)
	{
		College clg=ss.updateCollegeData(c);
		Iterable<College> clist=ss.displayAllCollege();
		
		if(clg!=null)
		{
			m.addAttribute("data", clist);
			return "view_college";
		}
		else
		{
			return "edit_college";
		}
	}
	
	@RequestMapping("/delete_college")
	public String deleteCollegeData(@ModelAttribute College c,Model m)
	{
		ss.deleteCollege(c);
		Iterable<College> clist=ss.displayAllCollege();
		m.addAttribute("data", clist);
		return "view_college";
	}
}
