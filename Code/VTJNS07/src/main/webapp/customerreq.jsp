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
    <title>Customer Dashboard</title>

    <!-- External CSS (Optional for customization) -->
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
            display: flex;
        }

        /* Sidebar Styles */
        .sidebar {
            background-color: #004aad;
            width: 250px;
            height: 100vh;
            padding-top: 20px;
            color: white;
            position: fixed;
        }

        .sidebar h2 {
            text-align: center;
            color: white;
            margin-bottom: 30px;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 15px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .sidebar ul li:hover {
            background-color: #0066cc;
        }

        .sidebar ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .sidebar ul li a:hover {
            text-decoration: underline;
        }

        /* Main Content Area */
        .main-content {
            margin-left: 250px; /* Space for sidebar */
            padding: 20px;
            width: 100%;
        }

        .navbar {
            background-color: #004aad;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: calc(100% - 250px);
            top: 0;
            left: 250px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-size: 16px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Table Design */
        table {
            width: 100%;
            margin-top: 80px; /* Space for navbar */
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #004aad;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            color: #004aad;
            font-weight: bold;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Button Style for Verify Link */
        .verify-btn {
            background-color: #28a745;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            display: inline-block;
            text-align: center;
        }

        .verify-btn:hover {
            background-color: #218838;
        }

    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Dashboard</h2>
        <ul>
            <li><a href="customerreq.jsp">New Customers</a></li>
            <li><a href="customerdetails.jsp">Customer Info</a></li>
            <li><a href="customerdeta.jsp">Customer Transactions</a></li>
            <li><a href="index.html">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Navbar -->
        <div class="navbar">
            <div class="logo">
                <h2>Customer Management</h2>
            </div>
        </div>

        <!-- Table for displaying customer data -->
        <table>
            <thead>
                <tr>
                    <th><b>FId</b></th>
                    <th><b>File Name</b></th>
                    <th><b>Encrypted Data</b></th>
                    <th><b>OwnerID</b></th>
                    <th><b>Status</b></th>
                    <th><b>Action</b></th>
                </tr>
            </thead>

            <%
                Connection con = Database.getConnection();
                String sql = "SELECT * FROM customer WHERE Ifscode='pending'";
                PreparedStatement ps = con.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
            %>
                <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                    <td><%= rs.getString(4) %></td>
                    <td><%= rs.getString(10) %></td>
                    <td><%= rs.getString(5) %></td>
                    <td>
                        <a class="verify-btn"
                           href="verify.jsp?uname=<%= rs.getString(1) %>&&uemail=<%= rs.getString(2) %>&&adhar=<%= rs.getString(4) %>&&bank=<%= rs.getString(10) %>">
                            Verify
                        </a>
                    </td>
                </tr>
            <%
                }
            %>
        </table>
    </div>

</body>
</html>
