<%@page import="com.database.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Details</title>
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
            max-width: 1000px;
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

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        th {
            background-color: #1ABC9C;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .btn-back {
            background-color: #1ABC9C;
            color: white;
            padding: 12px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        .btn-back:hover {
            background-color: #16A085;
        }

        /* Responsive Design */
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

            table {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <ul class="navbar">
        <div class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="bankReg.jsp">Bank Registration</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="bankdetails.jsp">Bank Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Admin.jsp">Logout</a>
            </li>
        </div>
    </ul>

    <!-- Main Content -->
    <div class="main-content">
        <div class="container">
            <h2>Bank Details</h2>
            <table>
                <thead>
                    <tr>
                        <th>Bank Id</th>
                        <th>Bank Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Address</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        String sql = "SELECT * FROM banktable";
                        Connection con = Database.getConnection();
                        PreparedStatement ps = con.prepareStatement(sql);
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(5) %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <a href="adminhome.jsp">
                <button class="btn-back">Back to Dashboard</button>
            </a>
        </div>
    </div>

</body>
</html>
