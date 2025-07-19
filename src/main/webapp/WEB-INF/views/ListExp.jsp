<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Expense List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <div class="card border-secondary">
        <div class="card-header bg-secondary text-white d-flex justify-content-between align-items-center">
            <h4 class="mb-0">Expense List</h4>
            <a href="newexpense" class="btn btn-light btn-sm">+ Add New</a>
        </div>
        <div class="card-body p-0">
            <table class="table table-bordered table-striped mb-0">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Category</th>
                        <th>Subcategory</th>
                        <th>Vendor</th>
                        <th>Payment Type</th>
                        <th>Amount</th>
                        <th>Date</th>
                        <th>Description</th>
                        <th>User</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${not empty expenses}">
                        <c:forEach var="exp" items="${expenses}">
                            <tr>
                                <td>${exp.expenseId}</td>
                                <td>${exp.title}</td>
                                <td>${exp.category}</td>
                                <td>${exp.subcategory}</td>
                                <td>${exp.vendor}</td>
                                <td>${exp.paymentType}</td>
                                <td>&#8377; ${exp.amount}</td>
                                <td>${exp.transactionDate}</td>
                                <td>${exp.description}</td>
                                <td>${exp.user.firstName} </td>
                                <td>
                                	<a href="viewexpense?expenseId=${exp.expenseId}" class="btn btn-warning">view</a>
                                    <a href="editExpense?expenseId=${exp.expenseId}" class="btn btn-sm btn-primary">Edit</a>
                                    <a href="deleteexpense?expenseId=${exp.expenseId}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="11" class="text-center text-muted">No expenses available</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
