package com.dev.factory;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils
{


private HibernateUtils() {	}
	

	private static final SessionFactory SESSION_FOACTORY=getFactory();
	
	private static SessionFactory getFactory()
	{
		Configuration config=new Configuration();
		config.configure();
		
		SessionFactory factory	=config.buildSessionFactory();
		return factory;
		
	}
	public static SessionFactory getSessionFactory() {
		return SESSION_FOACTORY;
	}

}	
