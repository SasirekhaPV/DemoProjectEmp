<header class="top-bar js-top-bar _fixed _scrolling">
		<div class="container-fluid ">
			<nav
				class="navbar navbar-expand-lg navbar-expand-lg  fixed-top bg-dark">
				<a id="para1"><%=session.getAttribute("emp_First_Name") %></a>
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
