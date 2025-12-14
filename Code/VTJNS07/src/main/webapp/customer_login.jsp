<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login - Bank</title>
<!-- Add CSS links (Bootstrap for easy layout) -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<!-- Optional custom styles for colors and fonts -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f7fc;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
        padding: 0 20px;
    }
    .navbar {
        background-color: #0056b3;
    }
    .navbar-nav .nav-link {
        color: #ffffff !important;
    }
    .navbar-nav .nav-link:hover {
        color: #cce7ff !important;
    }
    .main-content {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px 0;
    }
    .login-block {
        background-color: white;
        border-radius: 8px;
        padding: 30px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 500px;
    }
    .login-block h2 {
        color: #0056b3;
        text-align: center;
        margin-bottom: 20px;
    }
    .login-block h5 {
        color: #333;
    }
    .btn-primary {
        background-color: #0056b3;
        border-color: #0056b3;
    }
    .btn-primary:hover {
        background-color: #004085;
        border-color: #003366;
    }
    .register-link {
        display: block;
        text-align: center;
        margin-top: 15px;
        font-size: 14px;
    }
    .register-link a {
        color: #0056b3;
        text-decoration: none;
    }
    .register-link a:hover {
        text-decoration: underline;
    }
    .footer {
        background-color: #f1f1f1;
        padding: 40px 20px;
        border-radius: 8px;
        margin-top: 30px;
    }
    .footer .info-block, .footer .sidebar {
        background-color: white;
        border-radius: 8px;
        padding: 20px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }
    .footer .sidebar a {
        display: block;
        padding: 10px;
        color: #0056b3;
        text-decoration: none;
        font-weight: bold;
    }
    .footer .sidebar a:hover {
        background-color: #cce7ff;
    }
</style>
</head>
<body class="main-layout">
    <!-- Navigation bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Bank Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin.jsp">Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="bank_login.jsp">Bank Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="customer_login.jsp"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main content -->
    <div class="main-content">
        <!-- Login Block -->
        <div class="login-block">
            <h2>Welcome to Bank Login</h2>
            <form action="CustomerLogin" method="post">
                <div class="form-group">
                    <label for="cid"><h5><b>Account No:</b></h5></label>
                    <input type="text" name="cid" id="cid" class="form-control" required="required" placeholder="Enter your account number">
                </div>
                <div class="form-group">
                    <label for="email"><h5><b>Email:</b></h5></label>
                    <input type="email" name="email" id="email" class="form-control" required="required" placeholder="Enter your email address">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
            </form>
            <div class="register-link">
                <p>Don't have an account? <a href="Register.jsp">Register here</a></p>
            </div>
        </div>
    </div>

    <!-- Footer section for extra information -->
    <div class="footer">
        <div class="container">
            <!-- Information Block (could include account balance or other details) -->
            <div class="info-block">
                <h2>Bank Information</h2>
                <h5><b>Account Balance:</b> $10,500.00</h5>
                <p>View your account details and perform transactions right here.</p>
                <ul>
                    <li>Account Number: 123-456-7890</li>
                    <li>Email: user@example.com</li>
                    <li>Last login: April 5, 2025</li>
                </ul>
            </div>

            <!-- Sidebar with navigation links -->
            <div class="sidebar">
                <h4>Quick Links</h4>
                <a href="#">View Account Statements</a>
                <a href="#">Make a Transfer</a>
                <a href="#">Contact Support</a>
                <a href="#">Settings</a>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript: jQuery, Bootstrap, Popper.js -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
