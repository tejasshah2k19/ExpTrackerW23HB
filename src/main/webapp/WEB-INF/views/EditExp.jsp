<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Expense</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h2 class="mb-4">Edit Expense</h2>

    <form action="updateexpense" method="post">
        <input type="hidden" name="expenseId" value="${expense.expenseId}"/>

        <div class="form-group">
            <label>Title</label>
            <input type="text" name="title" class="form-control" value="${expense.title}" required>
        </div>

        <div class="form-group">
            <label>Category</label>
            <input type="text" name="category" class="form-control" value="${expense.category}" required>
        </div>

        <div class="form-group">
            <label>Subcategory</label>
            <input type="text" name="subcategory" class="form-control" value="${expense.subcategory}">
        </div>

        <div class="form-group">
            <label>Vendor</label>
            <input type="text" name="vendor" class="form-control" value="${expense.vendor}">
        </div>

        <div class="form-group">
            <label>Payment Type</label>
            <select name="paymentType" class="form-control" required>
                <option value="CASH" ${expense.paymentType == 'CASH' ? 'selected' : ''}>CASH</option>
                <option value="UPI" ${expense.paymentType == 'UPI' ? 'selected' : ''}>UPI</option>
                <option value="CC" ${expense.paymentType == 'CC' ? 'selected' : ''}>Credit Card</option>
            </select>
        </div>

        <div class="form-group">
            <label>Amount</label>
            <input type="number" name="amount" class="form-control" value="${expense.amount}" step="0.01" required>
        </div>

        <div class="form-group">
            <label>Transaction Date</label>
            <input type="date" name="transactionDate" class="form-control" value="${expense.transactionDate}" required>
        </div>

        <div class="form-group">
            <label>Description</label>
            <textarea name="description" class="form-control" rows="3">${expense.description}</textarea>
        </div>


        <button type="submit" class="btn btn-primary">Update Expense</button>
        <a href="listexp" class="btn btn-secondary">Cancel</a>
    </form>
</div>
</body>
</html>
