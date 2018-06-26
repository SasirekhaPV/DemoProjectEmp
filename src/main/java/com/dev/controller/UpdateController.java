package com.dev.controller;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dev.dao.EmpInfoDAO;
import com.dev.dto.Employee;
import com.dev.dto.User_Master;
import com.dev.factory.EmpInfoDAOFactory;


@Controller
@RequestMapping("/UpdateController")
public class UpdateController {
	EmpInfoDAO db = EmpInfoDAOFactory.getDatabase();
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String searchId() {
		return "SearchUpdate";
	}
	

	@RequestMapping(value="/AdminPage",
			method=RequestMethod.POST)
public ModelAndView  getAdminUpdatePage(HttpServletRequest req ){
		String empId = req.getParameter("emp_ID");
		Employee emp=db.searchEmp(empId);
		System.out.println(emp);
		//String emp="2";
		return new ModelAndView("AdminEmpUpdate").addObject("emp", emp);
	}
	
	@InitBinder
	public void bindingPreparation(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor DateEditor = new CustomDateEditor(dateFormat, true);
		binder.registerCustomEditor(Date.class, DateEditor);
	}

	
	@RequestMapping(value="/Emp",
			method=RequestMethod.POST)
		public ModelAndView updateEmp(Employee emp,@RequestParam("userType") String userType,
				@RequestParam("userPassword") String userPassword){
		User_Master u=new User_Master();
		u.setUser_id(emp.getEmp_ID());
		u.setUserType(userType);
		u.setUserPassword(userPassword);
		u.setUserName(emp.getEmp_First_Name());
		emp.setUser(u);
		
		System.out.println(emp);
			db.updateEmp(emp);
			 return new ModelAndView("AdminEmpUpdate", "msg", "Employee details was updated successfully");
			 }

			
		}
