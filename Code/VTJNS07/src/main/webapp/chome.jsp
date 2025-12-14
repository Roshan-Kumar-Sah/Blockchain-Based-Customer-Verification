<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <title>Customer Home Page</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to a stylesheet for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .main-layout {
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .navbar-nav {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
            background-color: #2C3E50;
        }
        .nav-item {
            padding: 10px 20px;
        }
        .nav-link {
            color: white;
            text-decoration: none;
        }
        .nav-link:hover {
            background-color: #34495E;
            padding: 10px;
        }
        .container {
            padding: 20px;
            margin-top: 20px;
        }
        .rules-section {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .rules-section h2 {
            color: #2C3E50;
        }
        .rules-section p {
            font-size: 1.1em;
            line-height: 1.6em;
        }
    </style>
</head>
<body class="main-layout">
    <!-- Navigation Bar -->
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="view_statement.jsp">View Statement</a></li>
        <li class="nav-item"><a class="nav-link" href="view_balance.jsp">View Balance</a></li>
        <li class="nav-item"><a class="nav-link" href="customer_login.jsp">Logout</a></li>
    </ul>

    <!-- Main Content Section -->
    <div class="container">
        <h1>Welcome to Your Dashboard</h1>
        <p>Manage your account, view your transaction statements, and stay updated on important rules and regulations.</p>

        <!-- Transaction Rules and Regulations Section -->
        <div class="rules-section">
            <h2>Customer Rules and Regulations for Transactions</h2>
            <p><strong>1. Transaction Limits:</strong> Each transaction may have a set limit depending on the account type. Ensure that the amount you wish to transfer or withdraw complies with these limits.</p>
            <p><strong>2. Transaction Fees:</strong> Please note that certain transactions may incur fees. You will be informed of any additional charges before confirming the transaction.</p>
            <p><strong>3. Transaction Confirmation:</strong> Always double-check the recipient's details and the transaction amount before confirming any transaction.</p>
            <p><strong>4. Security:</strong> We recommend using multi-factor authentication (MFA) for added security when performing any financial transaction.</p>
            <p><strong>5. Timeframes:</strong> Transactions processed outside of business hours may be delayed. Check our operating hours for more details.</p>
            <p><strong>6. Disputes:</strong> In case of any dispute regarding a transaction, please contact customer service immediately with the transaction ID for further investigation.</p>
            <p><strong>7. Fraud Prevention:</strong> Be aware of phishing attempts or fraudulent activities. Always ensure that you are on a secure connection when performing any online transaction.</p>
            <p>If you have any questions or concerns regarding these rules, feel free to contact our support team.</p>
        </div>
    </div>
</body>
</html>
