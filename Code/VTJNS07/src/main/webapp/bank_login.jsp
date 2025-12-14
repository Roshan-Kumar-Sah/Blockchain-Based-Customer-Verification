<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1">
    <title>Bank Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .main-layout {
            padding: 0;
            margin: 0;
        }
        .navbar-nav {
            display: flex;
            justify-content: space-between;
            background-color: #333;
            padding: 10px;
            list-style-type: none;
            margin: 0;
        }
        .navbar-nav .nav-item {
            padding: 10px 20px;
        }
        .navbar-nav .nav-link {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }
        .navbar-nav .nav-item:hover {
            background-color: #575757;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }
        h2 .yellow {
            color: #f2b400;
        }
        .form-container {
            background-color: white;
            width: 40%;
            margin: 30px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container table {
            width: 100%;
            margin-bottom: 20px;
        }
        .form-container td {
            padding: 10px;
            font-size: 16px;
        }
        .form-container input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        .form-container button {
            width: 100%;
            padding: 12px;
            background-color: #f2b400;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 18px;
            cursor: pointer;
            margin-top: 10px;
        }
        .form-container button:hover {
            background-color: #e69500;
        }
        
        .feature-block, .security-block, .why-choose-us {
            background-color: white;
            width: 80%;
            margin: 30px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .feature-block h3, .security-block h3, .why-choose-us h3 {
            color: #333;
        }

        .feature-block ul, .why-choose-us ul {
            list-style-type: none;
            padding: 0;
        }

        .feature-block li, .why-choose-us li {
            font-size: 16px;
            margin-bottom: 10px;
        }

        .feature-block i, .why-choose-us i {
            font-size: 24px;
            color: #f2b400;
            margin-right: 10px;
        }

        .security-block p {
            color: #666;
            font-size: 16px;
        }

        .btn-learn-more {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #f2b400;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 16px;
        }

        .btn-learn-more:hover {
            background-color: #e69500;
        }

    </style>
</head>
<body class="main-layout">
    <nav>
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Admin.jsp">Admin</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="bank_login.jsp">Bank Login</a>
            </li>
            <li class="nav-item d_none le_co">
                <a class="nav-link" href="customer_login.jsp"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
            </li>
            <li class="nav-item d_none le_co">
                <a class="nav-link" href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
            </li>
        </ul>
    </nav>

    <h2>Welcome to Bank Login <br><span class="yellow">LOGIN</span></h2>

    <div class="form-container">
        <form action="BankLogin" method="post">
            <table>
                <tr>
                    <td><label for="bankid">Bank ID:</label></td>
                    <td><input type="text" id="bankid" name="bankid" required="required" placeholder="Enter your Bank ID"></td>
                </tr>
                <tr>
                    <td><label for="email">Email:</label></td>
                    <td><input type="email" id="email" name="email" required="required" placeholder="Enter your email"></td>
                </tr>
                <tr>
                    <td colspan="2"><button type="submit">Login</button></td>
                </tr>
            </table>
        </form>
    </div>

    <!-- Bank Features Block -->
    <div class="feature-block">
        <h3><i class="fas fa-cogs"></i> Bank Features</h3>
        <ul>
            <li><i class="fas fa-check-circle"></i> 24/7 Online Banking</li>
            <li><i class="fas fa-check-circle"></i> Mobile Banking App</li>
            <li><i class="fas fa-check-circle"></i> Instant Transfers</li>
            <li><i class="fas fa-check-circle"></i> Low Transaction Fees</li>
        </ul>
    </div>

    <!-- Why Choose Us Block -->
    <div class="why-choose-us">
        <h3><i class="fas fa-thumbs-up"></i> Why Choose Us?</h3>
        <ul>
            <li><i class="fas fa-shield-alt"></i> Trusted & Secure</li>
            <li><i class="fas fa-users"></i> Customer-Centric Approach</li>
            <li><i class="fas fa-globe"></i> Global Access</li>
            <li><i class="fas fa-headset"></i> Excellent Customer Support</li>
        </ul>
    </div>

    <!-- Security Features Block -->
    <div class="security-block">
        <h3><i class="fas fa-lock"></i> Security Features</h3>
        <p>Your privacy and security are our top priority. We use industry-standard encryption, two-factor authentication, and other advanced security measures to protect your personal and financial information.</p>
        <a href="security_features.jsp" class="btn-learn-more">Learn More</a>
    </div>

</body>
</html>
