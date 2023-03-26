<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>

<body background="https://www.noupe.com/wp-content/uploads/2009/10/hybrid-genesis.jpg">

<div class="container">
	<div class="row main">
		<div class="main-login main-center">
			<h3> Sign up </h3>
				<form action="<c:url value="/register"/>" method="post">
						
					<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Your Name</label>
						  <div class="cols-sm-10">
							<div class="input-group">
							   <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							   <input type="text" class="form-control" name="customerName" placeholder="Enter your Name"/>
						    </div>
						  </div>
					</div>

					<div class="form-group">
					  <label for="email" class="cols-sm-2 control-label">Your Email</label>
						<div class="cols-sm-10">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
								<input type="text" class="form-control" name="email" placeholder="Enter your Email"/>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						<label for="name" class="cols-sm-2 control-label">Your Address</label>
						  <div class="cols-sm-10">
							<div class="input-group">
							   <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
							   <input type="text" class="form-control" name="customerAddr" placeholder="Enter your Address"/>
						    </div>
						  </div>
					</div>

					<div class="form-group">
					  <label for="username" class="cols-sm-2 control-label">Username</label>
						<div class="cols-sm-10">
							<div class="input-group">
							   <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
							   <input type="text" class="form-control" name="username"  placeholder="Enter your Username"/>
							</div>
						</div>
					</div>

					<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" placeholder="Enter your Password"/>
								</div>
							</div>
					</div>
					
					<div class="form-group ">
							<input type="submit" value="Register" class="btn btn-primary btn-lg btn-block login-button" />
						</div>
						
					</form>
				</div>
			</div>
		</div>
</body>
