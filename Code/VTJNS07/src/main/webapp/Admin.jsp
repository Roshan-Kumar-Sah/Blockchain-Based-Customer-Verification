<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Banking System</title>
    <!-- Link to Bootstrap CSS for better styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        /* Overall body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f9;
        }

        /* Sidebar styling */
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #4d9e2f;
            padding-top: 30px;
            color: white;
            border-right: 3px solid #f2c100;
        }

        .sidebar a {
            padding: 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            transition: background 0.3s;
        }

        .sidebar a:hover {
            background-color: #0056b3;
        }

        /* Main content area */
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }

        .container {
            margin-top: 30px;
        }

        /* Dashboard block styling */
        .dashboard-block {
            margin: 20px 0;
            padding: 20px;
            border-radius: 8px;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .dashboard-block:hover {
            transform: translateY(-10px);
        }

        /* Form styling */
        .login-form {
            background-color: #fff;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: 0 auto;
            animation: formSlideIn 1s ease-out;
        }

        /* Slide in animation for the login form */
        @keyframes formSlideIn {
            0% {
                transform: translateY(-30px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .form-control {
            border-radius: 10px;
            margin-bottom: 20px;
            height: 45px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: #4d9e2f;
            box-shadow: 0 0 10px rgba(77, 158, 47, 0.6);
        }

        button {
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 10px;
            padding: 12px 20px;
            width: 100%;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Hover effect for navbar links */
        .nav-link:hover {
            color: #007bff;
            transition: color 0.3s ease;
        }

        /* KYC Info Block */
        .kyc-info {
            background-color: #eaf4ea;
            padding: 20px;
            border-radius: 8px;
            margin-top: 40px;
            font-size: 14px;
            color: #555;
        }

        /* Footer */
        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 12px;
            color: #888;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <h2 class="text-center">Admin Dashboard</h2>
        <a href="index.html">Home</a>
        <a href="Admin.jsp">Admin</a>
        <a href="bank_login.jsp">Bank Login</a>
        <a href="customer_login.jsp">Customer Login</a>
        <a href="#">KYC Info</a>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <!-- Dashboard Header -->
        <div class="container">
            <h2 class="text-center">Admin Dashboard</h2>
            <h4 class="text-center"><span class="yellow">Secure Access</span></h4>

            <!-- Dashboard Blocks -->
            <div class="row">
                <!-- First Block (System Status) -->
                <div class="col-md-4">
                    <div class="dashboard-block">
                        <h5><strong>System Status</strong></h5>
                        <p>The system is running smoothly. All services are online.</p>
                    </div>
                </div>
                <!-- Second Block (KYC Progress) -->
                <div class="col-md-4">
                    <div class="dashboard-block">
                        <h5><strong>KYC Progress</strong></h5>
                        <p>90% of customer KYC is complete. 10% pending for verification.</p>
                    </div>
                </div>
                <!-- Third Block (User Statistics) -->
                <div class="col-md-4">
                    <div class="dashboard-block">
                        <h5><strong>User Statistics</strong></h5>
                        <p>Total Users: 1500</p>
                        <p>Active Users: 1200</p>
                    </div>
                </div>
            </div>

            <!-- Login Form Section -->
            <div class="login-form">
                <form action="Admin" method="post">
                    <div class="mb-3">
                        <label for="adminid" class="form-label">Admin ID:</label>
                        <input type="text" id="adminid" name="adminid" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password:</label>
                        <input type="password" id="password" name="password" class="form-control" required>
                    </div>
                    <button type="submit">Login</button>
                </form>
            </div>

            <!-- KYC Information Block -->
            <div class="kyc-info">
                <h5><strong>Important Information Regarding KYC (Know Your Customer)</strong></h5>
                <p>As an admin, you are responsible for ensuring the security and compliance of customer data. The KYC process is mandatory for verifying the identity of customers opening new accounts. Please make sure to follow all necessary steps to verify customers' identity and ensure compliance with local regulations.</p>
                <p>For further assistance or to update KYC information, please contact the support team.</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Banking System. All rights reserved.</p>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
