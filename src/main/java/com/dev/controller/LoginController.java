package com.dev.controller;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dev.dao.EmpInfoDAO;
import com.dev.dto.Employee;
import com.dev.factory.EmpInfoDAOFactory;

@Controller
@RequestMapping("/search")
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "AdminLogin";
	}

	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public ModelAndView submit(HttpServletRequest req) {
		String empId = req.getParameter("emp_ID");
		String password = req.getParameter("userPassword");
//		SessionFactory factory = HibernateUtils.getSessionFactory();
//		Session session = factory.openSession();
		EmpInfoDAO emp1 = EmpInfoDAOFactory.getDatabase();
		Employee emp = new Employee();
		emp = emp1.login(empId, password);
		
		System.out.println(emp);
		String msg = null;
		if (emp != null) {
			String type = emp.getUser().getUserType();
			if(type.equalsIgnoreCase("Admin"))
			{
			msg = "login success";
			return new ModelAndView("adminHeader", "msg", msg).addObject("emp",emp);
					
			}
			else if(type.equalsIgnoreCase("Employee"))
			{
				msg = "login Success";
			return new ModelAndView("EmployeeHeader", "msg", msg).addObject("emp", emp);
			}
			else {
				return new ModelAndView("AdminLogin");
			}
		    }
		    
	   else {
			msg = "login failed";
			return new ModelAndView("AdminLogin", "msg", msg );
		}
		
}}