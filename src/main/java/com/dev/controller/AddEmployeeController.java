package com.dev.controller;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dev.dao.EmpInfoDAO;
import com.dev.dto.Employee;
import com.dev.dto.User_Master;
import com.dev.factory.EmpInfoDAOFactory;

@Controller
@RequestMapping("/AddEmp")
public class AddEmployeeController {
	EmpInfoDAO db = EmpInfoDAOFactory.getDatabase();
	@RequestMapping(value="/Page",method=RequestMethod.GET)
	public String addEmpPage()
	{
		return "AddEmp";

	}


	@InitBinder
	public void bindingPreparation(WebDataBinder binder) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor DateEditor = new CustomDateEditor(dateFormat, true);
		binder.registerCustomEditor(Date.class, DateEditor);
	}


	@RequestMapping(value="/submit",method=RequestMethod.POST)
	public ModelAndView submitEmpDetails(Employee emp,@RequestParam("userType") String userType,@RequestParam("userPassword") String userPassword){
		User_Master u=new User_Master();
		u.setUser_id(emp.getEmp_ID());
		u.setUserType(userType);
		u.setUserPassword(userPassword);
		u.setUserName(emp.getEmp_First_Name());
		
		emp.setUser(u);
		System.out.println(emp);
		db.createProfile(emp);
		System.out.println(emp);
		return new ModelAndView("AddEmp","msg","Employee details was added successfully");
		}

}
//public ModelAndView submitEmpDetails(Employee emp,@RequestParam("userType") String userType,@RequestParam("userPassword") String userPassword){

//		 @ModelAttribute
//		    public void addAttributes(Model model) {
//		        model.addAttribute("msg",,);
//		    }
//model.addAttribute("UserName",emp.getUser());

//		User_Master user=new User_Master();
//
//		model.addAttribute("UserId",emp.getEmp_ID());
//		model.addAttribute("UserName",user.getUserName());
//		model.addAttribute("UserPassword",user.getUserPassword());
//		model.addAttribute("UserType",user.getUserType());



//return "addEmployee";
//}
//	Department dept=new Department();
//	model.addAttribute("DeptId",dept.getDept_Id());
//	model.addAttribute("DeptName",dept.getDept_Name());
//
//	Grade_Master gm=new Grade_Master();
//	
//	model.addAttribute("Code",gm.getGrade_Code());
//	model.addAttribute("Desc",gm.getDescription());
//	model.addAttribute("MinSal",gm.getMin_Salary());
//	model.addAttribute("MaxSal",gm.getMax_Salary());



/*@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute("command")Employee emp, BindingResult result) {
	  Employee employee = prepareModel(emp);
	  dao.createEmpProfile(emp);
	  return new ModelAndView("AddEmployee");
	 }
	 private Employee prepareModel(Employee emp){
			Date d=new Date();
			emp.setEmp_ID(emp.getEmp_ID());
			emp.setEmp_First_Name(emp.getEmp_First_Name());
			emp.setEmp_Last_Name(emp.getEmp_Last_Name());
			emp.setEmp_Date_of_Birth(emp.getEmp_Date_of_Birth());
			emp.setEmp_Date_of_Joining(emp.getEmp_Date_of_Joining());
			emp.setEmp_Basic(emp.getEmp_Basic());
			emp.setEmp_Contact_Num(emp.getEmp_Contact_Num());
			emp.setEmp_Dept_ID(emp.getEmp_Dept_ID());
			emp.setEmp_Designation(emp.getEmp_Designation());
			emp.setEmp_Gender(emp.getEmp_Gender());
			emp.setEmp_Grade(emp.getEmp_Grade());
			emp.setEmp_Home_Address(emp.getEmp_Home_Address());
			emp.setEmp_Marital_Status(emp.getEmp_Marital_Status());
			User_Master user=new User_Master();
			user.setUserId(emp.getEmp_ID());
			user.setUserName(emp.getEmp_First_Name());
			user.setUserPassword(user.getUserPassword());
			user.setUserType(user.getUserType());
		    emp.setUser(user);
		  return emp;
		 }*/

//	@RequestMapping(value="/submit",method=RequestMethod.POST)
//	public String submitEmpDetails(Employee emp){
//		dao.createEmpProfile(emp);
//		//return new ModelAndView("AddEmployee.jsp", "msg", "Employee details was added successfully");
//		return "AddEmployee";
//	}

