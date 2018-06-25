<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Add Employee Details</title>
    <link rel="stylesheet" href="addemp.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!--<link rel="stylesheet" href="css/bootstrap.css">-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

</head>
<body>
<div class="container cl">
    <h1 class="well">Add Employee Details</h1>
</div>
<div class="container cl">
<form method="post" action="./submit" >

    <div>
        Emp_ID:<input type="text" name="Emp_ID"/><br>
        Emp_First_Name:<input type="text" name="Emp_First_Name"/><br>
        Emp_Last_Name:<input type="text" name="Emp_Last_Name"/><br>
        Emp_Date_of_Birth:<input type="date"  name=Emp_Date_of_Birth  /><br>
        Emp_Date_of_Joining:<input type="date" name="Emp_Date_of_Joining"/><br>

        Emp_Dept_ID:<input type="number" name="Emp_Dept_ID"/><br>
        Emp_Grade:<input type="text" name="Emp_Grade"/><br>
        Emp_Designation:<input type="text" name="Emp_Designation"/><br>
        Emp_Basic:<input type="number" name="Emp_Basic"/><br>
        Emp_Gender:<input type="text" name="Emp_Gender"/><br>
        Emp_Marital_Status:<input type="text" name="Emp_Marital_Status"/><br>
        Emp_Home_Address:<input type="text" name="Emp_Home_Address"/><br>
        Emp_Contact_Num:<input type="text" name="Emp_Contact_Num"/><br>


        userType:<input type="text"  name="userType" /> <br>
        userPassword:<input type="password" name="userPassword"> <br>
        <input type="submit" value="create">
    </div>

    <h1>${msg}</h1>
</form>
</div>
</body>
</html>