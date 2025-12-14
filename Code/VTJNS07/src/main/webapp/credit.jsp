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
    <title>Credit Transaction</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Sidebar Styling */
        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #2C3E50;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            display: block;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #34495E;
            color: #ecf0f1;
        }

        .sidebar .active {
            background-color: #27AE60;
            color: white;
        }

        /* Main content area */
        .main-content {
            margin-left: 260px;
            padding: 30px;
        }

        .navbar {
            display: flex;
            justify-content: flex-end;
            background-color: #2C3E50;
            padding: 10px 20px;
            position: sticky;
            top: 0;
            z-index: 1000;
            width: 100%;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            margin-left: 20px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #34495E;
            color: #ecf0f1;
        }

        /* Form and table styles */
        .container {
            max-width: 1000px;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #2C3E50;
        }

        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            text-align: left;
            font-size: 16px;
        }

        input[type="text"], input[type="email"], input[type="number"], button {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            background-color: #f4f4f9;
        }

        button {
            background-color: #27AE60;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2C3E50;
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <a href="transaction.jsp" class="active">Transfer</a>
    <a href="debit.jsp">Debit</a>
    <a href="view_statement.jsp">View Statement</a>
    <a href="view_balance.jsp">View Balance</a>
    <a href="customer_login.jsp"><i class="fa fa-user" aria-hidden="true"></i> Logout</a>
</div>

<!-- Main content area -->
<div class="main-content">
    <!-- Navbar -->
    <div class="navbar">
        <a href="customer_dashboard.jsp">Dashboard</a>
    </div>

    <!-- Credit Transaction Form -->
    <div class="container">
        <h2> Credit</h2>
        <%
            String cid = (String) session.getAttribute("cid");
            String sql = "SELECT * FROM customer WHERE Email = ?";
            Connection con = Database.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String email = rs.getString(2);
                String name = rs.getString(1);
                String mobile = rs.getString(5);
                String aadhar = rs.getString(4);
                String accounno = rs.getString(12);
        %>

        <form action="Credit" method="post">
            <table>
                <tr><td>Account No:</td><td><input type="text" name="accountno" value="<%= accounno %>" required></td></tr>
                <tr><td>Name:</td><td><input type="text" name="name" value="<%= name %>" required></td></tr>
                <tr><td>Email:</td><td><input type="email" name="email" value="<%= email %>" required></td></tr>
                <tr><td>Mobile No:</td><td><input type="text" name="mobile" value="<%= mobile %>" required></td></tr>
                <tr><td>Aadhar No:</td><td><input type="text" name="adhar" value="<%= aadhar %>" required></td></tr>
                <tr><td>Credit Amount:</td><td><input type="number" name="damount" required></td></tr>
                <tr><td><button type="submit">Credit</button></td></tr>
            </table>
        </form>

        <%
            }
        %>
    </div>

</div>

</body>
</html>
