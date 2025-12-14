<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banking System - KYC Registration</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS for responsiveness and UI components -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f7f9fb;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #34495e;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar .nav-link {
            color: #ffffff;
            font-size: 16px;
            margin: 0 15px;
            transition: 0.3s;
        }

        .navbar .nav-link:hover {
            color: #1abc9c;
        }

        /* Header Section */
        .header {
            background-color: #34495e;
            color: white;
            text-align: center;
            padding: 30px;
        }

        .header h1 {
            font-size: 36px;
            font-weight: 700;
        }

        .header p {
            font-size: 18px;
            margin-top: 10px;
        }

        /* Main Content Area */
        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            padding: 40px;
            max-width: 850px;
            width: 100%;
            margin: 20px auto;
        }

        h2 {
            color: #34495e;
            font-size: 32px;
            font-weight: 700;
            margin-bottom: 30px;
            text-align: center;
        }

        .form-control {
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        .form-check-label {
            font-size: 16px;
        }

        .btn-primary {
            background-color: #1abc9c;
            border-color: #1abc9c;
            padding: 12px 30px;
            font-size: 18px;
            border-radius: 8px;
            width: 100%;
            transition: 0.3s;
        }

        .btn-primary:hover {
            background-color: #16a085;
            border-color: #16a085;
        }

        /* Footer */
        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
            color: #999;
            background-color: #34495e;
            padding: 15px;
        }

        .footer p {
            margin: 0;
        }

        .form-check-input:checked {
            background-color: #1abc9c;
            border-color: #1abc9c;
        }

        .form-check-input {
            width: 18px;
            height: 18px;
            border-radius: 50%;
        }

        .form-group label {
            font-size: 18px;
            font-weight: 500;
        }

        /* Media Queries for Mobile */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
                max-width: 100%;
            }

            h2 {
                font-size: 24px;
            }
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand text-white" href="#">Banking System</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Admin.jsp">ADMIN</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="bank_login.jsp">BANK LOGIN</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="customer_login.jsp">Customer Login</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Header Section -->
    <div class="header">
        <h1>Customer Application</h1>
        <p>Fill out the form below to complete your registration.</p>
    </div>

    <!-- Main Content Area (Form) -->
    <div class="container">
        <form action="URegister" method="post">
            <div class="card p-4 shadow">
                <div class="card-body">

                    <!-- Full Name -->
                    <div class="form-group">
                        <label for="name">Full Name</label>
                        <input type="text" class="form-control" name="name" id="name" required>
                    </div>

                    <!-- Email -->
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" class="form-control" name="email" id="email" required>
                    </div>

                    <!-- Father's Name -->
                    <div class="form-group">
                        <label for="fname">Father's Name</label>
                        <input type="text" class="form-control" name="fname" id="fname" required>
                    </div>

                    <!-- Aadhar Number -->
                    <div class="form-group">
                        <label for="ano">Aadhar Number</label>
                        <input type="text" class="form-control" name="ano" id="ano" minlength="12" maxlength="12" pattern="\d{12}" required>
                    </div>

                    <!-- Mobile Number -->
                    <div class="form-group">
                        <label for="mobile">Mobile Number</label>
                        <input type="text" class="form-control" name="mobile" id="mobile" pattern="[6789][0-9]{9}">
                    </div>

                    <!-- Gender -->
                    <div class="form-group">
                        <label>Gender</label>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="male" checked>
                            <label class="form-check-label">Male</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="female">
                            <label class="form-check-label">Female</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="gender" value="other">
                            <label class="form-check-label">Other</label>
                        </div>
                    </div>

                    <!-- Date of Birth -->
                    <div class="form-group">
                        <label for="dob">Date of Birth</label>
                        <input type="date" class="form-control" name="dob" id="dob" required>
                    </div>

                    <!-- Marriage Status -->
                    <div class="form-group">
                        <label for="mop">Marriage Status</label>
                        <input type="text" class="form-control" name="mop" id="mop" required>
                    </div>

                    <!-- Address -->
                    <div class="form-group">
                        <label for="address">Residential Address</label>
                        <input type="text" class="form-control" name="address" id="address" required>
                    </div>

                    <!-- Bank Selection -->
                    <div class="form-group">
                        <label for="bank">Select Bank</label>
                        <select class="form-control" name="bank" id="bank">
                            <option value="SBI">SBI</option>
                            <option value="UNION">Union Bank</option>
                            <option value="HDFC">HDFC</option>
                            <option value="AXIS">AXIS</option>
                            <option value="ICICI">ICICI</option>
                        </select>
                    </div>

                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary btn-lg">Register</button>

                </div>
            </div>
        </form>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Banking System. All Rights Reserved.</p>
    </div>

</body>

</html>
