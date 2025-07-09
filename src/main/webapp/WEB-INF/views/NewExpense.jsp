<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New Expense</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <div class="card border-info">
        <div class="card-header bg-info text-white">
            <h4 class="mb-0">Add New Expense</h4>
        </div>
        <div class="card-body">
            <form action="saveExpense" method="post">
                <!-- Hidden field for expenseId if editing -->
                <input type="hidden" name="expenseId" value="${expense.expenseId}" />

                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" name="title" id="title" required />
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="category">Category</label>
                        <input type="text" class="form-control" name="category" id="category" required />
                    </div>
                    <div class="form-group col-md-6">
                        <label for="subcategory">Subcategory</label>
                        <input type="text" class="form-control" name="subcategory" id="subcategory" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="vendor">Vendor</label>
                    <input type="text" class="form-control" name="vendor" id="vendor" />
                </div>

                <div class="form-group">
                    <label for="paymentType">Payment Type</label>
                    <select class="form-control" name="paymentType" id="paymentType" required>
                        <option value="">Select</option>
                        <option value="CASH">CASH</option>
                        <option value="UPI">UPI</option>
                        <option value="CC">Credit Card</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="amount">Amount</label>
                    <input type="number" step="0.01" class="form-control" name="amount" id="amount" required />
                </div>

                <div class="form-group">
                    <label for="transactionDate">Transaction Date</label>
                    <input type="date" class="form-control" name="transactionDate" id="transactionDate" required />
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea class="form-control" name="description" id="description" rows="3"></textarea>
                </div>
 
 

                <button type="submit" class="btn btn-primary">Save Expense</button>
                <a href="listExpenses" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
</div>

</body>
</html>
