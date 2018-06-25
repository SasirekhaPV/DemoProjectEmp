package com.dev.factory;

import com.dev.dao.EmpInfoDAO;
import com.dev.dao.HIBERNATE_Impl;
import com.dev.dao.JDBCImpl;

public class EmpInfoDAOFactory {
	private static final String DATABASE="HIBERNATE";
	private EmpInfoDAOFactory(){}
	private static final EmpInfoDAO ref=getDAO();
	private static EmpInfoDAO getDAO(){
		EmpInfoDAO db=null;
		if(DATABASE.equals("JDBC")){
			db=(EmpInfoDAO) new JDBCImpl();
		}
		else if(DATABASE.equals("HIBERNATE")){
			db=new HIBERNATE_Impl();
		}

		return db;

	}
	public static EmpInfoDAO getDatabase(){
		return ref;
		//return getDAO();--to get multiple objects--
	}
}
