package com.dev.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dev.dao.EmpInfoDAO;
import com.dev.dao.HIBERNATE_Impl;
import com.dev.dto.Employee;

@Controller
@RequestMapping("/get")
public class AllDetailsEmployee {

	@RequestMapping(value="/DisplayAll", method= RequestMethod.GET)
	public ModelAndView getAllEmp(@RequestParam(value="page") int page)
	{

		EmpInfoDAO em = new HIBERNATE_Impl();
		List<Employee> emp1 = em.empDetails(page);
		return new ModelAndView("viewproject").addObject("emp",emp1)	;
				
		
	}
}
