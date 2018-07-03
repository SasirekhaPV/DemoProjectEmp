package com.dev.test;

import java.util.Date;

import com.dev.dao.HIBERNATE_Impl;
import com.dev.dto.Employee;




public class CreateprofileTest 
{

	public static void main(String[] args) 
	{

		com.dev.dto.Employee emp = new com.dev.dto.Employee();
		Date d = new Date();
		//for employee table
		emp.setEmp_ID("100001");
		emp.setEmp_First_Name("djgfu"); 
		emp.setEmp_Last_Name ("jain"); 
		emp.setEmp_Dept_ID (11);
		emp.setEmp_Date_of_Birth(d);
		emp.setEmp_Date_of_Joining(d);
		emp.setEmp_Grade ("m2");
		emp.setEmp_Designation ("Devop");
		emp.setEmp_Basic(18333); 
		emp.setEmp_Gender ("M") ;
		emp.setEmp_Marital_Status ("S");
		emp.setEmp_Home_Address ("hkr"); 
		emp.setEmp_Contact_Num ("+91213131355");

		//for user_master table
		com.dev.dto.User_Master us = new com.dev.dto.User_Master();
		us.setUser_id("100001");
		us.setUserName("djgfu");
		us.setUserPassword("qwert");
		us.setUserType("emp");
		
		emp.setUser(us);	


		com.dev.dao.EmpInfoDAO db = new HIBERNATE_Impl();
		boolean res = db.createProfile(emp);

		if(res) 
		{
			System.out.println("Success");
		}
		else 
		{
			System.out.println("Failed");
		}
	}
}