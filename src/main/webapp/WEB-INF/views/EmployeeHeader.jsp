
<%@page import="com.dev.dto.Employee"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="Header.css">
 <meta charset="UTF-8">
    <title></title>
<!-- <link rel="stylesheet" href="./resources/AdminCss.css"> -->
<style >
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
#para1 {
   
    color:white;
}
.top{
margin-left:30%;
}

</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
</head>
<body>
	
	
	<header class="top-bar js-top-bar _fixed _scrolling">
		<div class="container-fluid ">
			<nav
				class="navbar navbar-expand-lg navbar-expand-lg  fixed-top bg-dark">
				<a id="para1">${emp.getEmp_First_Name().toUpperCase()}</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<form class="form-inline my-2 my-md-0 " action="./searchReturn"
					method="POST">
					<div class="collapse navbar-collapse">
						<ul class="navbar-nav mr-auto">

 &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;


							
								
							<input class="form-control mr-sm-2" type="text" name="emp_ID"
								placeholder="Search by emp id" aria-label="Search">
						<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Search</button>
						
								 &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;   &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 
								 &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;
						
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp; &emsp;&emsp;&emsp; 
						<li class="nav-item active" align="right"><a
								class="nav-link" href="./logout">Logout</a>
								
								</li>
								

						</ul>
						
						
					</div>
					
					<div>


</div>
					
				</form>

			</nav>

		</div>
	</header>

	
	
	
	<div class="container-fluid jumbotron">
		<div class="row">
			<div class="col-sm-12">
				
				<table class="table table-condensed">
  <tr>
	<td>Emp_ID</td>
	<td>${emp.getEmp_ID()}</td>
  </tr>
  <tr>
	<td>First Name</td>
	<td>${emp.getEmp_First_Name()}</td>
	<%Employee em=(Employee)request.getAttribute("emp"); %>
						<%session.setAttribute("emp_First_Name",em.getEmp_First_Name().toUpperCase()); %>
	
  </tr>
  <tr>
	<td>Last name</td>
	<td>${emp.getEmp_Last_Name()}</td>
  </tr>
  <tr>
	<td>DOB</td>
	<td>${emp.getEmp_Date_of_Birth()}</td>
  </tr>
  <tr>
	<td>Date of joining</td>
	<td>${emp.getEmp_Date_of_Joining()}</td>
  </tr>
  <tr>
	<td>Dept id</td>
	<td>:${emp.getEmp_Dept_ID()}</td>
  </tr>
  <tr>
	<td>Grade</td>
	<td>:${emp.getEmp_Grade()}</td>
  </tr>
  <tr>
	<td>Designation</td>
	<td>:${emp.getEmp_Designation()}</td>
  </tr>
  <tr>
	<td>Basic</td>
	<td>${emp.getEmp_Basic()}</td>
  </tr>
  <tr>
	<td>Gender</td>
	<td>:${emp.getEmp_Gender()}</td>
  </tr>
  <tr>
	<td>Martial Status</td>
	<td>${emp.getEmp_Marital_Status()}</td>
  </tr>
  <tr>
	<td>Address</td>
	<td>${emp.getEmp_Home_Address()}</td>
  </tr>
  <tr>
	<td>Contact num</td>
	<td>${emp.getEmp_Contact_Num()}</td>
  </tr>
  <tr>
	<td>UserType</td>
	<td>${emp.getUser().getUserType()}</td>
  </tr>
  </table>
				
			
			</div>

		</div>
	</div>

	<footer>
    <p><marquee>© 2018 Xforce, All rights reserved 2018.</marquee></p>
</footer>
</body>
</html>