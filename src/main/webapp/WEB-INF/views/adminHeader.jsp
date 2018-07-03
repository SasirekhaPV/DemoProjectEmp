<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
<!-- <link rel="stylesheet" href="Header.css"> -->
<link rel="stylesheet" href="./resources/AdminCss.css">
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
}#para1 {
   
    color:white;
}


</style>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<header  class="top-bar js-top-bar _fixed _scrolling">
    <div class="container-fluid ">
        <nav class="navbar navbar-expand-lg navbar-expand-lg  fixed-top bg-dark" >
            <a id="para1" >${emp.getEmp_First_Name().toUpperCase()}</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
    
            
            
            
            <!-- form button for search update page -->
            <form class="form-inline my-2 my-md-0 " action="./searchReturnAdmin?emp_First_Name=${emp.getEmp_First_Name()}"
					method="post">
					<div class="collapse navbar-collapse">
						<ul class="navbar-nav mr-auto">
								
								
								&emsp;&emsp;
							  
							<ul class="navbar-nav mr-auto ">
                      			              
                  
     			 					<li class="nav-item active">                        
            									<a class="nav-link" href="./Page">AddEmployee</a>
            						</li>
&emsp;&emsp;
                  					  <li class="nav-item active">
 												<a class="nav-link" href="./DisplayAll?page=1">AllEmployees</a>                        
                    					</li>&emsp;&emsp;
                   						 <li class="nav-item active">
                   						 
                        							<a class="nav-link" href="./logout">
                        							
                   						
                        							Logout</a>
                   						 </li>
                       				 </ul>
                       				 &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  &emsp;&emsp;
            
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp; &emsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
            &nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;  
               
           
                       				 <ul class="navbar-right">
                       				 <input type="text" class="form-control mr-sm-2" name="emp_ID" placeholder="Search by emp id" aria-label="Search"></input>
								<button type="submit" class="btn btn-outline-success my-2 my-sm-0">Search</button>
								</ul>
               				 </ul>
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
                    <th>Emp Id :</th>
                    <td>${emp.getEmp_ID()} </td>
                </tr>


            <tr>
                <th>First name :</th>
                <td>${emp.getEmp_First_Name()}</td>
              
            </tr>



            <tr>
                <th>Last name :</th>
                <td> ${emp.getEmp_Last_Name()}</td>
            </tr>

            <tr>
                <th>Date of Joining :</th>
                <td>${emp.getEmp_Date_of_Joining()}</td>
            </tr>
            <tr>
                <th>Date of Birth :</th>
                <td>${emp.getEmp_Date_of_Birth()}</td>
            </tr>

            <tr>
                <th>Dept Id :</th>
                <td>${emp.getEmp_Dept_ID()}</td>
            </tr>
            <tr>
                <th>Emp Grade:</th>
                <td>${emp.getEmp_Grade()}</td>
                  
            </tr>
            <tr>
                <th>Designation:</th>
                <td>${emp.getEmp_Designation()}</td>
            </tr>

            <tr>
                <th>Basic:</th>
                <td>
               ${emp.getEmp_Basic()}
                   
                   </td>
            </tr>


            <tr>
                <th>Contact Num:</th>
                <td>${emp.getEmp_Contact_Num()}</td>
            </tr>

            <tr>
                <th>Gender:</th>
                <td>${emp.getEmp_Gender()}
             
                </td>
            </tr>

            <tr>
                <th>Marital_Status:</th>
            <td>   ${emp.getEmp_Marital_Status()}
                
             
                </td>
            </tr>

            <tr>
                <th>Address:</th>
                <td>${emp.getEmp_Home_Address()}</td>
            </tr>
            <tr>
                <th>UserType:</th>
                <td>${emp.getUser().getUserType()}</td>
                
              
            </tr>


     <tr>
                <th> UserPassword:</th>
                <td>${emp.getUser().getUserPassword()}</td>
            </tr>
				<!-- <tr>
				<td>
				<button type="submit" class="btn btn-lg btn-info " value="update"> UPDATE </button></td>
				<td><button type="reset" class="btn btn-lg btn-info "> CLEAR</button></td> -->
				
				<!-- <input type="submit" value="create"> -->
				
        </table>


</div>
</div>
</div>


<%-- <%@ include file="SearchUpdate.jsp" %> --%>
<footer>
    <p><marquee>© 2018 Xforce, All rights reserved 2018.</marquee></p>
</footer>
</body>
</html>