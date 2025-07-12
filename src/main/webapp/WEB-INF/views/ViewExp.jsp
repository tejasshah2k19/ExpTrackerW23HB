<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Expense</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="mb-4 text-center">Expense Details</h2>

    <table class="table table-bordered w-75 mx-auto">
        <tbody>
        <tr>
            <th>Expense ID</th>
            <td>${expense.expenseId}</td>
        </tr>
        <tr>
            <th>Title</th>
            <td>${expense.title}</td>
        </tr>
        <tr>
            <th>Category</th>
            <td>${expense.category}</td>
        </tr>
        <tr>
            <th>Subcategory</th>
            <td>${expense.subcategory}</td>
        </tr>
        <tr>
            <th>Vendor</th>
            <td>${expense.vendor}</td>
        </tr>
        <tr>
            <th>Payment Type</th>
            <td>${expense.paymentType}</td>
        </tr>
        <tr>
            <th>Amount</th>
            <td>${expense.amount}</td>
        </tr>
        <tr>
            <th>Transaction Date</th>
            <td>
                 ${expense.transactionDate}
            </td>
        </tr>
        <tr>
            <th>Description</th>
            <td>${expense.description}</td>
        </tr>
        </tbody>
    </table>

    <div class="text-center mt-4">
        <a href="editexpense.jsp?expenseId=${expense.expenseId}" class="btn btn-warning">Edit</a>
        <a href="deleteexpense?expenseId=${expense.expenseId}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this expense?');">Delete</a>
        <a href="listexp" class="btn btn-secondary">Back to List</a>
    </div>
</div>

</body>
</html>
