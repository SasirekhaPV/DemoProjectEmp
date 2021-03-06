package com.dev.dto;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User_Master")
public class User_Master {
	@Column(name="UserId")
	@Id
	String user_id;
	@Column(name="UserName")
	String userName;
	
	@Column(name="UserPassword")
	String userPassword;
	
	@Column(name="UserType")
	String userType;
	

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	
	
}