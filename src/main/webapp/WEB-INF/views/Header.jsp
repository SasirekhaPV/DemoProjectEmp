
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
<!-- <link rel="stylesheet" href="./resources/Header.css"> -->
<script >
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

footer p {
    padding: 10.5px;
    margin: 0px;
    line-height: 100%;
}


</script>
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
				<a class="navbar-brand a">ADMIN</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<form class="form-inline my-2 my-md-0 " action="./searchReturn"
					method="post">
					<div class="collapse navbar-collapse">
						<ul class="navbar-nav mr-auto">



							<input type="text" class="form-control mr-sm-2" name="emp_ID"
								placeholder="Search by emp id" aria-label="Search">
							<input type="submit" class="btn btn-outline-success my-2 my-sm-0">


							<li class="nav-item active" align="right"><a
								class="nav-link" href="">Logout</a></li>

						</ul>
					</div>
				</form>
			</nav>

		</div>
	</header>
	<div id="about" class="container-fluid jumbotron">
		<div class="row">
			<div class="col-sm-12"></div>

		</div>
	</div>

	<footer>
		<p align="center">
			©COPYRIGHT TEST YANTRA 2018<a
				style="color: #0a93a6; text-decoration: none;" href=""> Xforce</a>,
			All rights reserved 2018.
		</p>
	</footer>
</body>
</html>