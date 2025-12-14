<%@page import="com.database.Database"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta charset="utf-8">
    <title>Customer Dashboard</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .navbar-nav {
            list-style-type: none;
            padding: 0;
            margin: 0;
            background-color: #2C3E50;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            height: 60px;
        }
        .nav-item {
            padding: 10px 20px;
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
            display: flex;
            justify-content: space-between;
            margin: 20px;
        }
        .sidebar {
            background-color: #fff;
            padding: 20px;
            width: 25%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .content {
            width: 70%;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            color: #2C3E50;
            font-size: 2em;
            margin-bottom: 30px;
        }
        .form-container {
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        form {
            font-size: 1.1em;
            color: #333;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        td, th {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #2C3E50;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        input[type="text"], input[type="email"], input[type="number"], select {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }
        button {
            background-color: #27AE60;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #2ECC71;
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
        <li class="nav-item"><a class="nav-link" href="credit.jsp">Credit</a></li>
        <li class="nav-item"><a class="nav-link" href="debit.jsp">Debit</a></li>
        <li class="nav-item"><a class="nav-link" href="view_statement.jsp">View Statement</a></li>
        <li class="nav-item"><a class="nav-link" href="view_balance.jsp">View Balance</a></li>
        <li class="nav-item"><a class="nav-link" href="customer_login.jsp"><i class="fa fa-user" aria-hidden="true"></i> Logout</a></li>
    </ul>

    <!-- Dashboard Content -->
    <div class="container">
        <!-- Sidebar Section -->
        <div class="sidebar">
            <h3>Welcome to Your Account</h3>
            <p>Your account and transaction management are just a few clicks away. Please select the options from the menu above.</p>
            <ul>
                <li><a href="transaction.jsp">Start a Transaction</a></li>
                <li><a href="view_balance.jsp">Check Balance</a></li>
                <li><a href="view_statement.jsp">View Statements</a></li>
            </ul>
        </div>

        <!-- Main Content Section (Transaction Form) -->
        <div class="content">
            <h2>Your Transaction are Secure</h2>
            <div class="form-container">
                <form action="Transaction" method="post">
                    <table>
                        <% 
                            // Fetch user data from the database
                            ArrayList<User> al = Database.userViewOtherUsersEmails();
                            String cid = (String) session.getAttribute("cid");
                            String sql = "select * from customer where Email='" + cid + "' ";
                            Connection con = Database.getConnection();
                            PreparedStatement ps = con.prepareStatement(sql);
                            ResultSet rs = ps.executeQuery();
                            while (rs.next()) {
                                String email = rs.getString(2);
                                String name = rs.getString(1);
                                String mobile = rs.getString(5);
                                String aadhar = rs.getString(4);
                                String accounno = rs.getString(12);
                        %>
                            <tr>
                                <td>Account No:</td>
                                <td><input type="text" name="accountno" value="<%= accounno %>" required="required" readonly></td>
                            </tr>
                            <tr>
                                <td>Name:</td>
                                <td><input type="text" name="name" value="<%= name %>" required="required" readonly></td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td><input type="email" name="email" value="<%= email %>" required="required" readonly></td>
                            </tr>
                            <tr>
                                <td>Mobile No:</td>
                                <td><input type="text" name="mobile" value="<%= mobile %>" required="required" readonly></td>
                            </tr>
                            <tr>
                                <td>Aadhar No:</td>
                                <td><input type="text" name="adhar" value="<%= aadhar %>" required="required" readonly></td>
                            </tr>
                            <tr>
                                <td>To Account No:</td>
                                <td><select name="toaccount">
                                    <option value="">Select Account</option>
                                    <% for(User u: al) { %>
                                        <option value="<%= u.getAccountno() %>"><%= u.getAccountno() %></option>
                                    <% } %>
                                </select></td>
                            </tr>
                            <tr>
                                <td>Amount:</td>
                                <td><input type="number" name="tamount" required="required"></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="submit">Send</button>
                                </td>
                            </tr>
                        <% } %>
                    </table>
                </form>
            </div>
        </div>
    </div>

    <!-- Logout Button -->
    <div class="logout-btn">
        <a href="customer_login.jsp">Logout</a>
    </div>

</body>
</html>
