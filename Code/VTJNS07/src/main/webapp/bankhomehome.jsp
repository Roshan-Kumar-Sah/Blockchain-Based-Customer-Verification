<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bank Dashboard</title>

    <!-- CSS for layout and design -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f7;
        }

        /* Navigation Bar */
        .navbar {
            background-color: #004aad;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        .navbar .logo h2 {
            margin: 0;
            font-size: 24px;
        }

        .navbar .menu {
            display: flex;
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .navbar .nav-item {
            margin-left: 20px;
        }

        .navbar .nav-item a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }

        .navbar .nav-item a:hover {
            text-decoration: underline;
        }

        /* Main Layout */
        .main-layout {
            padding-top: 60px; /* Space for fixed navbar */
            display: flex;
        }

        /* Sidebar */
        .sidebar {
            background-color: #004aad;
            color: white;
            padding: 20px;
            border-radius: 10px;
            width: 220px;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            margin: 15px 0;
        }
        
        .sidebar ul li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }

        /* Main Content (Dashboard) */
        .main-content {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 30px;
            width: calc(100% - 260px); /* Adjust width to account for sidebar */
        }

        .card {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card h3 {
            margin-top: 0;
            color: #333;
        }

        .card p {
            font-size: 1.2em;
            color: #666;
        }

        .card .value {
            font-size: 2em;
            color: #004aad;
            font-weight: bold;
        }

        /* Animation for blocks */
        .card-animation {
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <div class="navbar">
        <div class="logo">
            <h2>Bank Dashboard</h2>
        </div>
        <div class="menu">
            <!-- Your new navbar links -->
            <ul>
                <li class="nav-item">
                    <a class="nav-link" href="customerreq.jsp">New Customers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Logout</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-layout">
        <!-- Sidebar -->
        <div class="sidebar">
            <h3>Account Overview</h3>
            <ul>
                <li><a href="#">Account Summary</a></li>
                <li><a href="#">Transactions</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Profile</a></li>
            </ul>
        </div>

        <!-- Main Content (Dashboard) -->
        <div class="main-content">
            <!-- Account Details Card -->
            <div class="card card-animation">
                <h3>Account Number</h3>
                <p>Your Bank Account</p>
                <div class="value">123-456-7890</div>
            </div>

            <!-- Balance Card -->
            <div class="card card-animation">
                <h3>Current Balance</h3>
                <p>Available Funds</p>
                <div class="value">$5,432.10</div>
            </div>

            <!-- Recent Transactions Card -->
            <div class="card card-animation">
                <h3>Recent Transactions</h3>
                <ul>
                    <li>Deposit - $500.00</li>
                    <li>Withdrawal - $200.00</li>
                    <li>Transfer - $300.00</li>
                </ul>
            </div>

            <!-- Loan Status Card -->
            <div class="card card-animation">
                <h3>Loan Status</h3>
                <p>Outstanding Loan</p>
                <div class="value">$2,500.00</div>
            </div>
        </div>
    </div>
</body>
</html>
