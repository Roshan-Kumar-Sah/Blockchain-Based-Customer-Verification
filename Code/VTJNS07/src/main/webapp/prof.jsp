chrome<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>KYC Upload</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .sidebar {
            width: 200px;
            position: fixed;
            height: 100%;
            background: #333;
            padding-top: 20px;
        }

        .sidebar a {
            padding: 15px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }

        .sidebar a:hover {
            background-color: #575757;
        }

        .main-content {
            margin-left: 220px;
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        form {
            background: #fff;
            padding: 25px;
            border-radius: 8px;
            max-width: 500px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px 0;
        }

        input[type="text"], input[type="file"] {
            width: 100%;
            padding: 8px;
            margin-top: 4px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #45a049;
        }

        #file-name {
            margin-top: 8px;
            font-style: italic;
            color: #666;
        }
    </style>

    <script type="text/javascript">
        window.onload = function() {
            alert('Apply for KYC!');
        }

        function updateFileName() {
            var input = document.getElementById('fileUpload');
            var fileName = input.files[0] ? input.files[0].name : '';
            document.getElementById('file-name').innerText = fileName ? "Selected file: " + fileName : '';
        }
    </script>
</head>
<body>

<div class="sidebar">
    <a href="transaction.jsp" class="active">Transfer</a>
    <a href="debit.jsp">Debit</a>
    <a href="view_statement.jsp">View Statement</a>
    <a href="view_balance.jsp">View Balance</a>
    <a href="customer_login.jsp"><i class="fa fa-user" aria-hidden="true"></i> Logout</a>
</div>

<div class="main-content">
    <h2>KYC Document Upload</h2>

    <% 
        String cid = (String) session.getAttribute("cid");
        String accountno = request.getParameter("accountno");
        String name = request.getParameter("name");
        String aadhar = request.getParameter("aadhar");
    %>

    <form action="UploadKyc" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>Account No:</td>
                <td><input type="text" name="account_no" value="<%=accountno%>" required></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="<%=name%>" required></td>
            </tr>
            <tr>
                <td>Aadhar Number:</td>
                <td><input type="text" name="aadhar" value="<%=aadhar%>" required></td>
            </tr>
            <tr>
                <td>Upload ID Proof:</td>
                <td>
                    <input type="file" name="image_proof" id="fileUpload" required onchange="updateFileName()">
                    <div id="file-name"></div>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><button type="submit">Upload</button></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
