<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Registration</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7f6;
        }

        /* Navbar Styles */
        .navbar {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background: #1ABC9C;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
            display: flex;
            justify-content: center;
            padding: 15px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar-nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 70%;
            padding: 0 20px;
        }

        .nav-item {
            margin: 0;
        }

        .nav-link {
            text-decoration: none;
            color: white;
            font-size: 18px;
            font-weight: 600;
            padding: 12px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .nav-link:hover {
            background-color: #16A085;
            transform: translateY(-2px);
        }

        .nav-logo {
            display: flex;
            align-items: center;
            font-size: 22px;
            font-weight: bold;
            color: white;
        }

        .nav-logo img {
            width: 30px;
            height: 30px;
            margin-right: 10px;
        }

        /* Main Content */
        .main-content {
            padding-top: 90px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            gap: 40px;
        }

        .container {
            background-color: white;
            width: 80%;
            max-width: 800px;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #34495E;
            font-size: 28px;
            margin-bottom: 30px;
        }

        h2 .yellow {
            color: #F39C12;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        label {
            font-size: 16px;
            color: #34495E;
        }

        input {
            padding: 12px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border 0.3s ease;
        }

        input:focus {
            border: 1px solid #1ABC9C;
            outline: none;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .btn-submit {
            background-color: #1ABC9C;
            color: white;
            padding: 12px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #16A085;
        }

        /* Responsive Design for Small Screens */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }

            .navbar-nav {
                width: 100%;
                flex-direction: column;
                align-items: center;
                padding: 10px 0;
            }

            .nav-item {
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>

    <ul class="navbar">
        <div class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="bankReg.jsp">
                    <span class="nav-logo">
                        <img src="https://image.shutterstock.com/image-vector/bank-icon-vector-260nw-1143222145.jpg" alt="Logo">
                        Bank Registration
                    </span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="bankdetails.jsp">Bank Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Admin.jsp">Logout</a>
            </li>
        </div>
    </ul>

    <div class="main-content">
        <!-- Bank Registration Form -->
        <div class="container">
            <h2>Create New Bank <span class="yellow">Registration</span></h2>
            <form action="BankReg" method="post">
                <div class="form-group">
                    <label for="name">Bank Name:</label>
                    <input type="text" id="name" name="name" required="required">
                </div>
                <div class="form-group">
                    <label for="email">Contact:</label>
                    <input type="email" id="email" name="email" required="required">
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile:</label>
                    <input type="text" id="mobile" name="mobile" pattern="[6789][0-9]{9}" required>
                </div>
                <div class="form-group">
                    <label for="dob">Date of Establishment (DOE):</label>
                    <input type="date" id="dob" name="dob" required="required">
                </div>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address" required="required">
                </div>
                <div class="form-group">
                    <input type="submit" value="Register" class="btn-submit">
                </div>
            </form>
        </div>
    </div>

</body>
</html>
