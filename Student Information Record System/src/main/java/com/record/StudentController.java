
package com.record;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class StudentController {
	
	@Autowired
   StudentRepo repo;
   
	@RequestMapping("/regform")
	public String register() {
		return "registration";
	}

	
	@RequestMapping ("/userDetail")
	public String userInfo(Student reg) {
//		repo.save(reg);
		return "user-details";
	
	}
		

@RequestMapping("/operation")
public ModelAndView operation(Long UId, String ddlFlag) {
	System.out.println("Printing");

	if(ddlFlag.equals("select")) {
	Student reg = repo.findById(UId).orElse(new Student());
		
		
	}
	
	else if (ddlFlag.equals("delete")) {
		repo.deleteById(UId);
	}
	
	else {
	}

		return new ModelAndView ("operation");
	

}	
	
	
	
	@RequestMapping("/updatedetails")
	public ModelAndView updatedetails(Student student) {
		System.out.println("Printing");

		if(student.getFirstName() != null) {
			System.out.println("Student Have Data");
			repo.update(student.getUId(), student.getEmailId(),  student.getFirstName(), student.getGender(),student.getLastName(),
					student.getNumber(), student.getPassword(), student.getUname());
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("");
		
		
		return mv;
		
	}
	@RequestMapping("/user-details")
	public ModelAndView selectRecords(Student reg) {
		ModelMap model = new ModelMap();
		model.put("name", reg.getUname());
		model.put("email" , reg.getEmailId());
		model.put("gender" , reg.getGender() == Integer.parseInt("1") ? "Male" : "Female");
		model.put("firstname", reg.getFirstName());
		model.put("lastname", reg.getLastName() );
		model.put("number", reg.getNumber());
		
		ModelAndView mv = new ModelAndView("user-details");
		mv.addObject("regObj",model);
	    return mv;

		
		
	}
	
 }

