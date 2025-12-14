<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Bank Registration & Details</title>
    <!-- Link to Bootstrap CSS for better styling -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        /* General body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5; /* Light background for a fresh look */
            color: #333; /* Dark text for contrast */
            margin: 0;
            padding: 0;
        }

        /* Top Navbar styling */
        .navbar {
            background-color: #0072ff; /* Bright blue background for navbar */
            padding: 15px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }

        .navbar a:hover {
            color: #ffcc00; /* Yellow hover effect for links */
        }

        /* Left Sidebar Styling */
        .sidebar {
            background-color: #343a40;
            color: white;
            position: fixed;
            top: 0;
            left: 0;
            width: 250px;
            height: 100%;
            padding-top: 30px;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 12px 20px;
            font-size: 18px;
            transition: background-color 0.3s;
        }

        .sidebar a:hover {
            background-color: #0072ff;
            color: #fff;
        }

        /* Main Content Styling */
        .main-content {
            margin-left: 260px; /* Sidebar width */
            padding: 20px;
        }

        .info-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 50vh; /* To center content vertically */
            flex-direction: column;
            opacity: 0;
            animation: fadeIn 2s forwards;
            margin-bottom: 30px;
        }

        .info-container h2 {
            font-size: 36px;
            color: #333;
            font-weight: bold;
        }

        .info-container p {
            font-size: 20px;
            color: #555;
            text-align: center;
            max-width: 800px;
        }

        .dashboard-row {
            display: flex;
            justify-content: space-evenly;
            flex-wrap: wrap;
            margin-bottom: 50px;
            opacity: 0;
            animation: fadeIn 2s forwards 1s;
        }

        .dashboard-card {
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            padding: 25px;
            margin: 20px;
            width: 300px;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            cursor: pointer;
        }

        .dashboard-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        }

        .dashboard-card h5 {
            font-size: 20px;
            font-weight: bold;
        }

        .dashboard-card p {
            font-size: 16px;
            color: #666;
        }

        .btn-custom {
            background-color: #ff5733;
            color: white;
            padding: 12px 20px;
            border-radius: 10px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .btn-custom:hover {
            background-color: #ff4500;
        }

        /* Footer Styling */
        .footer {
            text-align: center;
            margin-top: 50px;
            color: #555;
            font-size: 14px;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Responsive Design */
        @media (max-width: 767px) {
            .dashboard-row {
                flex-direction: column;
            }

            .dashboard-card {
                width: 90%;
            }

            .info-container h2 {
                font-size: 28px;
            }

            .info-container p {
                font-size: 18px;
            }

            .main-content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>

    <!-- Left Sidebar -->
    <div class="sidebar">
        <h2 style="color: white; text-align: center; margin-bottom: 30px;">Admin Dashboard</h2>
        <a href="index.jsp">Dashboard</a>
        <a href="bankReg.jsp">Bank Registration</a>
        <a href="bankdetails.jsp">Bank Details</a>
        <!-- <a href="transaction.jsp">Transactions</a>
        <a href="reviewPending.jsp">Pending Reviews</a>
        <a href="compliance.jsp">Compliance</a> -->
        <a href="Admin.jsp">Logout</a>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <!-- Top Navbar -->
        <div class="navbar">
            <a href="index.jsp">Admin Home</a>
            <a href="settings.jsp">Settings</a>
            <a href="Admin.jsp">Logout</a>
        </div>

        <!-- Central Information Section -->
        <div class="info-container">
            <h2>Welcome to the Admin Dashboard</h2>
            <p>Manage the bank registration process, review bank details, and approve or reject pending applications. You have full control over the banking system's operation and compliance.</p>
        </div>

        <!-- Dashboard Cards (Blocks at the bottom) -->
        <div class="dashboard-row">
            <!-- Bank Registration Status Block -->
            <div class="dashboard-card">
                <h5><strong>Bank Registration Status</strong></h5>
                <p>The registration process for new banks is 80% complete. 20% of registrations are still pending.</p>
            </div>

            <!-- Pending Registrations Block -->
            <div class="dashboard-card">
                <h5><strong>Pending Registrations</strong></h5>
                <p>There are 5 banks pending for registration. Click below to review and approve them.</p>
                <a href="bankReg.jsp" class="btn-custom">Review Pending Registrations</a>
            </div>

            <!-- Registered Banks Block -->
            <div class="dashboard-card">
                <h5><strong>Registered Banks</strong></h5>
                <p>A total of 30 banks have successfully registered. Click below to view the details.</p>
                <a href="bankdetails.jsp" class="btn-custom">View Bank Details</a>
            </div>

            <!-- Total Transactions Block -->
            <div class="dashboard-card">
                <h5><strong>Total Transactions</strong></h5>
                <p>Total transaction volume for today is $5M. View detailed reports below.</p>
                <a href="transactions.jsp" class="btn-custom">View Transactions</a>
            </div>

            <!-- Pending Reviews Block -->
            <div class="dashboard-card">
                <h5><strong>Pending Reviews</strong></h5>
                <p>There are 12 applications pending review. Make decisions on these applications.</p>
                <a href="reviewPending.jsp" class="btn-custom">Review Applications</a>
            </div>

            <!-- Compliance Status Block -->
            <div class="dashboard-card">
                <h5><strong>Compliance Status</strong></h5>
                <p>The system is fully compliant with banking regulations. No issues reported.</p>
            </div>
        </div>

        <!-- Footer -->
        <div class="footer">
            <p>&copy; 2025 Banking System. All rights reserved.</p>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
