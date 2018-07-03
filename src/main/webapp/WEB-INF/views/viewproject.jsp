<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Employee Details  </title>
    <!-- <link rel="stylesheet" href="Search.css"/> -->
    
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
        #para1 {
   
    color:white;
}
        footer{
    background-color: #424558;
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    height: 35px;
    text-align: center;
    color: #CCC;
}
a{
color : white;
}
footer p {
    padding: 10.5px;
    margin: 0px;
    line-height: 100%;
}


    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>

<header  class="top-bar js-top-bar _fixed _scrolling">
    <div>
        <nav class="navbar navbar-expand-lg navbar-expand-lg  fixed-top bg-dark" >
            <a id="para1" >ADMIN</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse">
            		<ul class="navbar-nav mr-auto">
						 <li class="nav-item active">
                        							<a class="nav-link" href="./logout">Logout</a>
                   						 </li>
                   						 
                   						 </ul>
                   						 </div>
                   						 </nav>
                   						 </div>
                   						 </header>

<% int num = Integer.parseInt(request.getParameter("page")); %>

<div class=" table container-fluid jumbotron">
<div class="row">
<div class="col-sm-12">
    <h1 class="well" ><B>Employee Details</B></h1>
    <div class="col-lg-12 well">

        <div>
        <div></div>
	<table border="2">
             <tr>
                <b>
                    <td><b>ID</b></td>
                        <td><b>First_Name</b></td>
                         <td><b>Last_Name</b></td>
                        <td><b>DOB</b></td>
                         <td><b>DOJ</b></td>
                        <td><b>Dept_ID</b></td>
                        <td><b>Grade</b></td>
                        <td><b>Designation</b></td>
                        <td><b>Basic</b></td>
                        <td><b>Gender</b></td>
                         <td><b>Marital_Status</b></td>
                          <td><b>Address</b></td>
                        <td><b>Contact_Num</b></td>
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
        &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
             
            &nbsp;&nbsp;  
            
            <a href="./DisplayAll?page=<%=num-1%>" class="previous">&laquo; Previous</a>
            <a href="./DisplayAll?page=<%=num+1%>" class="next">Next &raquo;</a>
        </div>
    </div>
</div>
</div>
</div>
<footer>
    <p><marque>© 2018 Xforce, All rights reserved 2018.</marque></p>
</footer>
</body>
</html>


<!-- <footer>
    <p><marque>© 2018 Xforce, All rights reserved 2018.</marque></p>
</footer>

</body>
</html> -->