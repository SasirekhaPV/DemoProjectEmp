<header class="top-bar js-top-bar _fixed _scrolling">
		<div class="container-fluid ">
			<nav
				class="navbar navbar-expand-lg navbar-expand-lg  fixed-top bg-dark">
				<a id="para1" class="navbar-brand"><%=session.getAttribute("emp_First_Name") %></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- form button for search update page -->
				<form class="form-inline my-2 my-md-0 "
					action="./searchReturnAdmin"
					method="post">
					<div class="collapse navbar-collapse">
						<ul class="navbar-nav mr-auto">
							<ul class="navbar-nav mr-auto ">
								<li class="nav-item active"><a class="nav-link"
									href="./Page">AddEmployee</a></li> &emsp;&emsp;
								<li class="nav-item active"><a class="nav-link"
									href="./DisplayAll?page=1">AllEmployees</a></li>&emsp;&emsp;
									&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&emsp;&nbsp;&emsp;
									<input type="text" maxlength="6"
							pattern="\d{6}" class="form-control mr-sm-2" name="emp_ID"
									placeholder="Search by emp id" aria-label="Search"></input>
									
									
									
								<button type="submit"
									class="btn btn-outline-success my-2 my-sm-0">Search</button>
								
							</ul>
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;

							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
							&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp; &emsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&emsp;
							&nbsp;


							<ul class="navbar-right">
							
							<li class="nav-item active"><a class="nav-link"
									href="./logout">Logout</a></li>
								
							</ul>
						</ul>
					</div>
				</form>
			</nav>

		</div>
	</header>