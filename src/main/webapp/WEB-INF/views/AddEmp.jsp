<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Employee Details</title>
<link rel="stylesheet" href="./resources/AdminCss.css">
<!-- <link rel="stylesheet" href="./resources/AdminCss.css"> -->
<style>
footer {
	background-color: #696969;
	position: fixed;
	bottom: 0;
	left: 0;
	right: 0;
	height: 35px;
	text-align: center;
	color: #CCC;
}

#para1 {
	color: white;
}

a {
	color: white;
}

footer p {
	padding: 10.5px;
	margin: 0px;
	line-height: 100%;
}

.top {
	margin-left: 1811%;
}
.sub{
	margin-left: 45%;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">

</head>
<body class="container-fluid jumbotron">
	<jsp:include page="/WEB-INF/views/MainAdminHeader.jsp" />




	<div >

		<form method="post" action="./add">
	
			<div class="col-sm-12">
				<div class="row">
					<div class=" col-sm-6 form-group">
						<label>Emp Id</label> <input type="text" placeholder=" emp id"
							name="Emp_ID" class="form-control" type="number" maxlength="6"
							pattern="\d{6}" required />
					</div>
					<div class=" col-sm-6 form-group">
						<label>Dept Id</label> <input type="text"
							placeholder="Enter Emp Dept Id Here.." name="Emp_Dept_ID"
							class="form-control">
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 form-group">
						<label>First Name</label> <input type="text"
							placeholder=" first name" name="Emp_First_Name"
							class="form-control" required />
						</td>
					</div>
					<div class="col-sm-6 form-group">
						<label>Last Name</label> <input type="text"
							placeholder="last name" name="Emp_Last_Name" class="form-control"
							required />
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 form-group">
						<!-- Date input -->
						<label>Date of Joining</label> <input type="date"
							class="form-control" name="Emp_Date_of_Joining" required />
					</div>
					<div class="col-sm-6 form-group">
						<!-- Date input -->
						<label>Date of Birth</label> <input type="date"
							class="form-control" name="Emp_Date_of_Birth" required />
					</div>
				</div>
				<div class="form-group">
					<label>Address</label>
					<textarea placeholder="Enter Address Here.." rows="2"
						name="Emp_Home_Address" class="form-control" required></textarea>
				</div>


				<div class="row">
					<div class="col-sm-4 form-group">
						<label>Phone Number</label> <input type="text"
							placeholder=" Enter Phone No Here.." name="Emp_Contact_Num"
							class="form-control" required>
					</div>
					<div class="col-sm-4 form-group">
						<label>Designation</label> <input type="text"
							placeholder="Enter Emp Designation Here.." required name="Emp_Designation"
							class="form-control">
					</div>
					<div class="col-sm-4 form-group">
						<label>Gender</label>
						<!-- <input type="text" placeholder="Enter Zip Code Here.." class="form-control">-->
						<select class="form-control" name="Emp_Gender" required>
							<option name="Emp_Gender" value="male">Male</option>
							<option name="Emp_Gender" value="female">Female</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-4 form-group">
						<label>Grade</label> <select class="form-control" name="Emp_Grade" required>
							<option name="Emp_Grade" value="M1">M1</option>
							<option name="Emp_Grade" value="M2">M2</option>
							<option name="Emp_Grade" value="M3">M3</option>
							<option name="Emp_Grade" value="M4">M4</option>
							<option name="Emp_Grade" value="M5">M5</option>
							<option name="Emp_Grade" value="M6">M6</option>
							<option name="Emp_Grade" value="M7">M7</option>

						</select>
					</div>
					<div class="col-sm-4 form-group">
						<label>Marital Status</label> <select class="form-control"
							name="Emp_Marital_Status" required>
							<option name="Emp_Marital_Status" value="single">Single</option>
							<option name="Emp_Marital_Status" value="married">Married</option>
							<option name="Emp_Marital_Status" value="divorced">Divorced</option>
							<option name="Emp_Marital_Status" value="separated">Separated</option>
							<option name="Emp_Marital_Status" value="widowed">Widowed</option>
							<option name="Emp_Marital_Status" value="FriendZone">FriendZone</option>

						</select>
					</div>
					<div class="col-sm-4 form-group">
						<label>Basic Pay</label> <select class="form-control"
							name="Emp_Basic" required>
							<option name="Emp_Basic" value="1">1</option>
							<option name="Emp_Basic" value="2 ">2</option>
							<option name="Emp_Basic" value="3">3</option>
							<option name="Emp_Basic" value="5">5</option>
							<option name="Emp_Basic" value="7">7</option>

						</select>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-6 form-group">
						<label>Password</label> <input type="text"
							placeholder="Enter user new Password Here.." name="userPassword"
							class="form-control" required>
					</div>
					<div class="col-sm-6 form-group">
						<label>User Type</label> <select class="form-control"
							name="userType" required>
							<option name="userType" value="admin">Admin</option>
							<option name="userType" value="employee">Employee</option>

						</select>
					</div>
				</div>


			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-default elementColor sub">SUBMIT</button>
			</div>



			<h1>${msg}</h1>

		</form>
	</div>



	<footer>
		<p>
			<marquee>© 2018 Xforce, All rights reserved 2018.</marquee>
		</p>
	</footer>
</body>
</html>
