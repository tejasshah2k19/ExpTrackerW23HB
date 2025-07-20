<%@page import="com.entity.BudgetEntity"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    BudgetEntity budget = (BudgetEntity) request.getAttribute("budget");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Budget</title>
    <!-- Bootstrap 4.5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>


<jsp:include page="Navbar.jsp"></jsp:include>

<div class="container mt-5">
    <h3 class="text-center mb-4">Your Budget</h3>

<%
    if (budget != null) {
%>
    <!-- Budget Summary Card -->
    <div class="card mx-auto" style="max-width: 600px;">
        <div class="card-body">
            <h5 class="card-title">Monthly Budget</h5>
            <p class="card-text"><strong>Total Budget:</strong> ₹ <%= budget.getAmount() %></p>
            <p class="card-text"><strong>Spent:</strong> ₹ </p>
            <p class="card-text"><strong>Remaining:</strong> ₹ </p>

            <hr>
            <h6 class="card-subtitle mb-2 text-muted">Budget Period</h6>
             
        </div>
    </div>
<%
    } else {
%>
    <!-- Add Budget Form -->
    <div class="card mx-auto" style="max-width: 500px;">
        <div class="card-body">
            <h5 class="card-title">Set Your Monthly Budget</h5>
            <form action="addBudget" method="post">
                <div class="form-group">
                    <label for="totalBudget">Budget Amount (₹)</label>
                    <input type="number" class="form-control" id="totalBudget" name="amount" required min="1" placeholder="Enter amount">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Save Budget</button>
            </form>
        </div>
    </div>
<%
    }
%>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
