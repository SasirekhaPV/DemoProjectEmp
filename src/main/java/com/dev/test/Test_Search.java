package com.dev.test;

import com.dev.dao.EmpInfoDAO;
import com.dev.dto.Employee;
import com.dev.factory.EmpInfoDAOFactory;

public class Test_Search {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String Emp_id ="1";
		EmpInfoDAO db = EmpInfoDAOFactory.getDatabase();

		
		Employee emp = db.searchEmp(Emp_id);
		
		System.out.println(emp.getEmp_Contact_Num());
		System.out.println(emp.getEmp_First_Name());
		
	}

}
