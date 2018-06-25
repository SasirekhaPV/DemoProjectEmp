<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="./Emp" >
 <div>
Emp_ID:<input type="text" name="Emp_ID" value="${emp.getEmp_ID()}"  readonly="readonly"/><br>
Emp_First_Name:<input type="text" name="Emp_First_Name" value="${emp.getEmp_First_Name()}"/><br>
Emp_Last_Name:<input type="text" name="Emp_Last_Name"  value="${emp.getEmp_Last_Name()}"/><br>
Emp_Date_of_Birth:<input type="date"  name=Emp_Date_of_Birth value="${emp.getEmp_Date_of_Birth()}" /><br>
Emp_Date_of_Joining:<input type="date" name="Emp_Date_of_Joining" value="${emp.getEmp_Date_of_Joining()}"/><br>

Emp_Dept_ID:<input type="number" name="Emp_Dept_ID" value="${emp.getEmp_Dept_ID()}"/><br>
Emp_Grade:<input type="text" name="Emp_Grade" value="${emp.getEmp_Grade()}"/><br>
Emp_Designation:<input type="text" name="Emp_Designation" value="${emp.getEmp_Designation()}"/><br>
Emp_Basic:<input type="number" name="Emp_Basic" value="${emp.getEmp_Basic()}"/><br>
Emp_Gender:<input type="text" name="Emp_Gender" value="${emp.getEmp_Gender()}"/><br>
Emp_Marital_Status:<input type="text" name="Emp_Marital_Status" value="${emp.getEmp_Marital_Status()}"/><br>
Emp_Home_Address:<input type="text" name="Emp_Home_Address" value="${emp.getEmp_Home_Address()}"/><br>
Emp_Contact_Num:<input type="text" name="Emp_Contact_Num"value="${emp.getEmp_Contact_Num()}"/><br> 

 
 userType:<input type="text"  name="userType" value="${emp.getUser().getUserType()}" /> <br>  
userPassword:<input type="password" name="userPassword" value="${emp.getUser().getUserPassword()}"/> <br> 
<input type="submit" value="update">
</div>

<h1>${msg}</h1>
</form>
</body>
</html>