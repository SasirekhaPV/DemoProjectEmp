<%@page import="com.dev.dto.Employee"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<body>
	<form action="./AdminPage?emp_ID=${emp.getEmp_ID()}" method="post">
		<%
			Employee emp = (Employee) request.getAttribute("emp1");
		%>
		<table  border="1">
			<legend>Personalia:</legend>
			<tr>
				<b>
					<td><b>Emp_id</b></td>
					<td><b>FirstName</b></td>
					<td><b>LastName</b></td>
					<td><b>Date Of Birth</b></td>
					<td><b>Date Of joining</b></td>
					<td><b>Department Id</b></td>
					<td><b>Grade</b></td>
					<td><b>Designation</b></td>
					<td><b>Basic Salary</b></td>
					<td><b>Gender</b></td>
					<td><b>Marital Status</b></td>
					<td><b>Home Address</b></td>
					<td><b>Contact No</b></td>
				</b>
			</tr>
			<tr align="center">
				<td><%=emp.getEmp_ID()%></td>

				<td><%=emp.getEmp_First_Name()%></td>

				<td><%=emp.getEmp_Last_Name()%></td>

				<td><%=emp.getEmp_Date_of_Birth()%></td>

				<td><%=emp.getEmp_Date_of_Joining()%></td>

				<td><%=emp.getEmp_Dept_ID()%></td>

				<td><%=emp.getEmp_Grade()%></td>

				<td><%=emp.getEmp_Designation()%></td>

				<td><%=emp.getEmp_Basic()%></td>

				<td><%=emp.getEmp_Gender()%></td>

				<td><%=emp.getEmp_Marital_Status()%></td>

				<td><%=emp.getEmp_Home_Address()%></td>

				<td><%=emp.getEmp_Contact_Num() %></td>


			</tr>
		</table>
		<button type="submit" class="btn btn-outline-success my-2 my-sm-0">EDIT</button>
		</form>
</body>
</html>