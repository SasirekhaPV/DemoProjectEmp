package com.dev.dao;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.dev.dto.Employee;
import com.dev.dto.User_Master;
import com.dev.factory.HibernateUtils;

public class HIBERNATE_Impl implements EmpInfoDAO{
	
	SessionFactory factory=HibernateUtils.getSessionFactory();
	Session session=null;


	@Override
	public Employee login(String user_id, String password)
	{
		/*Session session=factory.openSession();
		User_Master us=new User_Master();
		Employee emp = new Employee();

		String query = "select emp from Employee as emp, User_Master"
				+ " as us where emp.emp_ID=us.user_id and us.user_id=:user_id and us.userPassword=:password";
		
        Query<Employee> q = session.createQuery(query);
        
        q.setParameter("user_id",user_id);
        q.setParameter("password",password);
        
        List<Employee> list = q.list();
         return list.get(0);   
 				*/
		
		
	//	Employee emp = null;
		Session session = factory.openSession();
		session.beginTransaction();
		
//		String query="select emp from Employee emp "
//				+ "where emp.emp_ID=user.userId and user.userId= :userId and user.userPassword= :password";

		String query = "select emp from Employee as emp, User_Master"
				+ " as us where emp.emp_ID=us.user_id and us.user_id=:user_id and us.userPassword=:password";

//		Query<Employee> q = session.createQuery(query);
//		q.setParameter("userId", UserId);
//		q.setParameter("password", UserPassword);
//
//		List<Employee> emp = q.list();
//		return emp.get(0);

		//emp = (Employee) q.uniqueResult();
		
		Query q=session.createQuery(query);
		 q.setParameter("user_id",user_id);
	     q.setParameter("password",password);
		Employee emp = (Employee) q.uniqueResult();
		return emp;

		// session = factory.openSession();
		// Employee emp=new Employee();
		// User_Master us=new User_Master();
		//
		// session.getTransaction().begin();
		// if (UserId.equals(us.getUserId())&&
		// UserPassword.equals(us.getUserPassword())) {
		// session.getTransaction().commit();
		// return emp;
		//
		// } else {
		// session.getTransaction().commit();
		// return emp;
		// }
		
	
	}

	@Override
	public Employee searchEmp(String Emp_id) {
		Session session=factory.openSession();
		session.getTransaction().begin();
		Employee emp=session.get(Employee.class,Emp_id);
		return emp;
	}

	
	

	@Override
	public boolean updateEmp(Employee emp) {
		Session session=factory.openSession();



		session.getTransaction().begin();

		//Employee emp=session.get(Employee.class,"5");

		//emp.setEmp_ID("5");

		session.merge(emp);
		 session.getTransaction().commit();

		// session.close();

		 return true;
		
		
}

	@Override
	public List<Employee> empDetails( int pageNumber) {
		
		int pageSize = 10;
		Session session=factory.openSession();

		session.getTransaction().begin();
		
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<Employee> criteriaQuery = cb.createQuery(Employee.class);
		Root<Employee> root = criteriaQuery.from(Employee.class);
        criteriaQuery.select(root);
        Query query = session.createQuery(criteriaQuery);
		query.setFirstResult((pageNumber - 1)* pageSize);
		query.setMaxResults(pageSize);
		List<Employee> list = query.getResultList();
		for(Employee e:list){
        System.out.println(e);	
		}
		session.getTransaction().commit();
		
		return list;
		
	}
	
	

	@Override
	public boolean createProfile(Employee emp) {
		try {
			Session session=factory.openSession();
			session.getTransaction().begin();
			session.save(emp);
			session.getTransaction().commit();
	   return true;
		} 
		catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	finally {
		if(session!=null)
		session.close();
	}
		//return false
	}


}
