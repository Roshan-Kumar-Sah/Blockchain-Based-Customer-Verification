<%@page import="com.database.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <title>View Statement</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #2C3E50;
            padding: 10px 20px;
            position: sticky;
            top: 0;
            z-index: 1000;
            width: 100%;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar-nav {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }

        .nav-item {
            margin: 0 15px;
        }

        .nav-link {
            color: white;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .nav-link:hover {
            background-color: #34495E;
            color: #ecf0f1;
        }

        .active {
            background-color: #27AE60;
            color: #fff !important;
        }

        /* Table Styling */
        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f4f4f4;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .container {
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        h2 {
            text-align: center;
            color: #2C3E50;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            padding: 20px;
            background-color: #2C3E50;
            color: white;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="debit.jsp">Debit</a></li>
        <li class="nav-item"><a class="nav-link" href="credit.jsp">Credit</a></li>
        <li class="nav-item"><a class="nav-link active" href="transaction.jsp">Transfer</a></li>
        <li class="nav-item"><a class="nav-link" href="view_statement.jsp">View Statement</a></li>
        <li class="nav-item"><a class="nav-link" href="view_balance.jsp">View Balance</a></li>
        <li class="nav-item"><a class="nav-link" href="customer_login.jsp"><i class="fa fa-user" aria-hidden="true"></i> Logout</a></li>
    </ul>
</div>

<!-- Main Content Area -->
<div class="container">
    <h2>Your Bank Statement</h2>

    <table>
        <thead>
            <tr>
                <th>Account Number</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Balance</th>
            </tr>
        </thead>
        <tbody>
            <%
                String cid = (String) session.getAttribute("cid");
                String sql = "SELECT * FROM credit WHERE Email = '" + cid + "'";
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
                <td><%= rs.getString(6) %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

<!-- Footer -->
<div class="footer">
    <p>&copy; 2025 Your Bank. All Rights Reserved.</p>
</div>

</body>
</html>
