<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - Expense Tracker</title>
    <!-- Bootstrap 4.5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<jsp:include page="Navbar.jsp"></jsp:include>

<!-- Page Content -->
<div class="container mt-4">

	<h4>Hi , ${sessionScope.user.firstName}</h4>
    <h3>Welcome to Expense Tracker Dashboard</h3>
    <p class="text-muted">Use the navigation above to manage your expenses and budget.</p>
</div>

<!-- Bootstrap JS, jQuery, Popper -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
