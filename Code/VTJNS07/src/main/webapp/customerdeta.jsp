<%@ page import="com.database.Database"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bank Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .main-layout {
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            height: 100vh;
        }
        /* Sidebar */
        .sidebar {
            width: 250px;
            background-color: #333;
            color: white;
            padding-top: 20px;
            padding-left: 15px;
            position: fixed;
            height: 100%;
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }
        .sidebar li {
            padding: 15px;
            font-size: 16px;
        }
        .sidebar li a {
            color: white;
            text-decoration: none;
        }
        .sidebar li a:hover {
            background-color: #575757;
            border-radius: 5px;
        }
        /* Main Content */
        .content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
            background-color: #fff;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #f2b400;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        /* Button Style */
        .logout-btn {
            background-color: #f2b400;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            display: block;
            width: 120px;
            text-align: center;
        }
        .logout-btn:hover {
            background-color: #e69500;
        }
    </style>
</head>
<body class="main-layout">

    <!-- Sidebar -->
    <div class="sidebar">
        <ul>
            <li><a href="customerreq.jsp">New Customers</a></li>
            <li><a href="customerdetails.jsp">Customer Info</a></li>
            <li><a href="customerdeta.jsp">Customer Transactions</a></li>
            <li><a href="index.html" class="logout-btn">Logout <i class="fa fa-sign-out-alt"></i></a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h2>Customer Information</h2>

        <table>
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
                    String sql = "SELECT * FROM bank_statement";
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
                        <td><%= rs.getString(7) %></td>
                        <td><%= rs.getString(8) %></td>
                    </tr>
                <% 
                    }
                %>
            </tbody>
        </table>
    </div>

</body>
</html>
