<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>KYC Registration</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap" rel="stylesheet">
    
    <style>
        /* Reset and Base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: #f3f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            width: 100%;
            max-width: 480px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1);
            padding: 30px;
            animation: fadeIn 1s ease-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .form-title {
            text-align: center;
            font-size: 32px;
            color: #2C3E50;
            font-weight: 600;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-size: 14px;
            color: #333;
            margin-bottom: 5px;
        }

        .form-control {
            width: 100%;
            padding: 15px;
            font-size: 16px;
            border-radius: 8px;
            border: 1px solid #ddd;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease-in-out;
        }

        .form-control:focus {
            border-color: #3498db;
            box-shadow: 0 0 10px rgba(52, 152, 219, 0.2);
            outline: none;
        }

        .form-group input[type="radio"] {
            margin-right: 10px;
        }

        .btn-primary {
            width: 100%;
            padding: 15px;
            background-color: #3498db;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #2980b9;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

        .footer a {
            color: #3498db;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .card {
                padding: 20px;
                margin: 0 15px;
            }
        }
    </style>
</head>

<body>

    <div class="card">
        <div class="form-title">
            <h2>KYC Registration</h2>
        </div>

        <!-- Registration Form -->
        <form action="URegister" method="post">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" name="name" id="name" class="form-control" required placeholder="Enter your full name">
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" name="email" id="email" class="form-control" required placeholder="Enter your email address">
            </div>

            <div class="form-group">
                <label for="fname">Father's Name</label>
                <input type="text" name="fname" id="fname" class="form-control" required placeholder="Enter your father's name">
            </div>

            <div class="form-group">
                <label for="ano">Aadhar Number</label>
                <input type="text" name="ano" id="ano" class="form-control" minlength="12" maxlength="12" pattern="\d{12}" required placeholder="Enter your Aadhar number">
            </div>

            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="text" name="mobile" id="mobile" class="form-control" pattern="[6789][0-9]{9}" required placeholder="Enter your mobile number">
            </div>

            <div class="form-group">
                <label>Gender</label><br>
                <input type="radio" name="gender" value="male" checked> Male
                <input type="radio" name="gender" value="female"> Female
                <input type="radio" name="gender" value="other"> Other
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" name="dob" id="dob" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="mop">Marital Status</label>
                <input type="text" name="mop" id="mop" class="form-control" required placeholder="Enter your marital status">
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" name="address" id="address" class="form-control" required placeholder="Enter your address">
            </div>

            <div class="form-group">
                <label for="bank">Select Bank</label>
                <select name="bank" id="bank" class="form-control" required>
                    <option value="SBI">SBI</option>
                    <option value="UNION">Union Bank</option>
                    <option value="HDFC">HDFC</option>
                    <option value="AXIS">AXIS</option>
                    <option value="ICICI">ICICI</option>
                </select>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary">Register</button>
            </div>
        </form>

        <!-- Footer Section -->
        <div class="footer">
            <p>Already have an account? <a href="customer_login.jsp">Login here</a></p>
        </div>
    </div>

    <!-- Scripts -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>
