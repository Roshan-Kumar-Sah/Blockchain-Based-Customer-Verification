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
    <title>View Bank Statement</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to external stylesheet if needed -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .navbar-nav {
            list-style-type: none;
            margin: 0;
            padding: 0;
            background-color: #2C3E50;
            display: flex;
            justify-content: center;
        }
        .nav-item {
            padding: 15px 25px;
            color: white;
        }
        .nav-link {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }
        .nav-link:hover {
            background-color: #34495E;
            padding: 10px;
        }
        .container {
            margin: 20px auto;
            width: 90%;
            max-width: 1200px;
        }
        .header {
            text-align: center;
            margin-bottom: 30px;
        }
        .header h2 {
            font-size: 2.5em;
            color: #2C3E50;
        }
        .table-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow-x: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 1em;
            color: #333;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background-color: #2C3E50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .logout-btn {
            text-align: center;
            margin-top: 20px;
        }
        .logout-btn a {
            padding: 10px 20px;
            background-color: #E74C3C;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
        }
        .logout-btn a:hover {
            background-color: #C0392B;
        }
    </style>
</head>
<body class="main-layout">
    <!-- Navigation Bar -->
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="transaction.jsp">Transfer</a></li>
        <li class="nav-item"><a class="nav-link" href="debit.jsp">Debit</a></li>
        <li class="nav-item"><a class="nav-link" href="credit.jsp">Credit</a></li>
        <li class="nav-item"><a class="nav-link" href="view_balance.jsp">View Balance</a></li>
    </ul>

    <div class="container">
        <!-- Header Section -->
        <div class="header">
            <h2>View Your Bank Statement</h2>
        </div>

        <!-- Bank Statement Table -->
        <div class="table-container">
            <table border="1">
                <thead>
                    <tr>
                        <th>Account Number</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Balance</th>
                        <th>Date</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        String cid = (String) session.getAttribute("cid");
                        String sql = "SELECT * FROM bank_statement WHERE Email = ?";
                        Connection con = Database.getConnection();
                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1, cid);
                        ResultSet rs = ps.executeQuery();
                        while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(6) %></td>
                        <td><%= rs.getString(7) %></td>
                        <td><%= rs.getString(8) %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

        <!-- Logout Button -->
        <div class="logout-btn">
            <a href="customer_login.jsp">Logout</a>
        </div>
    </div>
</body>
</html>
