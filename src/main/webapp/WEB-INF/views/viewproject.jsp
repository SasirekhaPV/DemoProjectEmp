<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Details  </title>
    <link rel="stylesheet" href="Search.css"/>
    <style>
        a {
            text-decoration: none;
            display: inline-block;
            padding: 8px 16px;
        }

        a:hover {
            background-color: #ddd;
            color: black;
        }


    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<div class=" table ">
    <h1 class="well">Employee Details</h1>
    <div class="col-lg-12 well">

        <div>
<table border="1">
             <tr>
                <b>
                    <td><b>emp_ID</b></td>
                        <td><b>emp_First_Name</b></td>
                         <td><b>emp_Last_Name</b></td>
                        <td><b>emp_Date_of_Birth</b></td>
                         <td><b>emp_Date_of_Joining</b></td>
                        <td><b>emp_Dept_ID</b></td>
                        <td><b>emp_Grade</b></td>
                        <td><b>emp_Designation</b></td>
                        <td><b>emp_Basic</b></td>
                        <td><b>emp_Gender</b></td>
                         <td><b>emp_Marital_Status</b></td>
                          <td><b>emp_Home_Address</b></td>
                        <td><b>emp_Contact_Num</b></td>
                 </b>
             </tr>
<c:forEach items="${emp}" var="pdto">
<tr>
<td>${pdto.emp_ID}</td>
<td>${pdto.emp_First_Name}</td>
<td>${pdto.emp_Last_Name}</td>
<td>${pdto.emp_Date_of_Birth}</td>
<td>${pdto.emp_Date_of_Joining}</td>
<td>${pdto.emp_Dept_ID}</td>
<td>${pdto.emp_Grade}</td>
<td>${pdto.emp_Designation}</td>
<td>${pdto.emp_Basic}</td>
<td>${pdto.emp_Gender}</td>
<td>${pdto.emp_Marital_Status}</td>
<td>${pdto.emp_Home_Address}</td>
<td>${pdto.emp_Contact_Num}</td>
</tr>
</c:forEach>
    
        </table>
        </div>
        <div>
            <a href="#" class="previous">&laquo; Previous</a>
            <a href="#" class="next">Next &raquo;</a>
        </div>
    </div>
</div>

</body>
</html>