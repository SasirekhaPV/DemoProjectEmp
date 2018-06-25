package com.dev.test;

import com.dev.dao.EmpInfoDAO;
import com.dev.dao.HIBERNATE_Impl;
import com.dev.dto.Employee;
import com.dev.factory.EmpInfoDAOFactory;

public class Test_Login {

	public static void main(String[] args) {
		
		com.dev.dao.EmpInfoDAO db = new HIBERNATE_Impl();
		Employee e = db.login("1","qwert");
		
}}
