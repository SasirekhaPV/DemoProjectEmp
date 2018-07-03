

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="./resources/AdminCss.css">
<style>

.top{
    margin-top: 40%;
}

.caja{
    border-radius: 5px;
   
}

footer{
    background-color: #36464e;
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
input:valid {
  color: green;
}
input:invalid {
  color: red;
}
background-color: #36464e;

</style>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: #36464e;">
	<div class="container">
		<div class="col-md-4 col-md-offset-4">
			<section>
				<div class="panel panel-default top caja">
					<div class="panel-body">
						<h3 class="text-center">Login</h3>

						<form action="./submit" method="post">
							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1"><i
									class="fa fa-user" aria-hidden="true"></i></span> <input type="EmpId"
									name="emp_ID" id="Empid" class="form-control"
									placeholder="EmpId" aria-describedby="sizing-addon1" maxlength="6"  pattern="\d{6}" required>
							</div>
							<br>
							<div class="input-group input-group-lg">
								<span class="input-group-addon" id="sizing-addon1"><i
									class="fa fa-key" aria-hidden="true"></i></span> <input
									type="password" name="userPassword" id="password"
									class="form-control" placeholder="Password"
									aria-describedby="sizing-addon1" maxlength="50"  required>
							</div>
							<br>
							<button type="submit" class="btn btn-primary btn-block">Login</button>

						</form>
					</div>
				</div>
			</section>
		</div>

	</div>
	<footer>
    <p>© 2018 Xforce, All rights reserved 2018.</p>
</footer>
</body>
</html>