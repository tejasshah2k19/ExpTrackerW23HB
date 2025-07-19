<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h3 class="text-center mb-4">Login</h3>
				<form action="login" method="post">
					<div class="form-group">
						<label for="email">Email address</label> <input type="email"
							class="form-control" id="email" name="email">
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="password" name="password">
					</div>
					<button type="submit" class="btn btn-primary btn-block">Login</button>
				</form>
				<br> <a href="signup">New User?</a>
			</div>

		</div>
	</div>
</body>
</html>
