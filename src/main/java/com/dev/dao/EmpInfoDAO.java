package com.dev.dao;

import java.util.List;

import com.dev.dto.Employee;

public interface EmpInfoDAO {

	public Employee login(String Emp_Id, String password);
	
	public  Employee searchEmp(String Emp_id);
	
	public boolean createProfile(Employee emp);
	
	public  void updateEmp(String Emp_Id);
	
	public List<Employee> empDetails( int PageNumber);
}
