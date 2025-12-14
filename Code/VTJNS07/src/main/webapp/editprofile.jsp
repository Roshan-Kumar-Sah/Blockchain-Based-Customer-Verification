<%@page import="com.database.Database"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
      </head>
<body class="main-layout">
      <ul class="navbar-nav mr-auto">
                                 
                                 <li class="nav-item">
                                    <a class="nav-link" href="credit.jsp">Credit</a>
                                 </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="debit.jsp">Debit </a>
                                 </li>
                                  <li class="nav-item">
                                    <a class="nav-link" href="view_statement.jsp">View Statement</a>
                                 </li>
                                  <li class="nav-item">
                                    <a class="nav-link" href="view_balance.jsp">View Balance</a>
                                 </li>
                                 
                                 
                                 
                                 <li class="nav-item d_none le_co">
                                    <a class="nav-link" href="customer_login.jsp"><i  class="fa fa-user" aria-hidden="true"></i> Logout</a>
                                 </li>
                                 
                              </ul>
                           
                      <h2 style="margin-bottom: 3%;"> EDIT PROFILE <br><span class="yellow"></span> </h2>
                      
<%



String cid=(String)session.getAttribute("cid");

String sql="select * from customer where Email='"+cid+"' ";
Connection con=Database.getConnection();
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
while(rs.next()){
	String email=rs.getString(2);
	String name=rs.getString(1);
	String mobile=rs.getString(5);
	String aadhar=rs.getString(4);
	String accounno=rs.getString(12);
	String address=rs.getString(9);
	%>
		
		<form action="Edit" method="post">
		
		<table style="color: green;">
		
		<tr><td>Account No:</td>
<td><input type="text" name="accountno" value="<%=accounno%>" required="required" readonly="readonly"></td></tr>
<tr><td>Name:</td>
<td><input type="text" name="name" value="<%=name%>" required="required" readonly="readonly"></td></tr>


<tr><td>Email:</td>
<td><input type="email" name="email" value="<%=email%>" required="required" readonly="readonly"></td></tr>

<tr><td>Mobile No:</td>
<td><input type="text" name="mobile" value="<%=mobile%>" required="required"  style="color: green;"></td></tr>

<tr><td>Aadhar No:</td>
<td><input type="text" name="adhar" value="<%=aadhar%>" required="required"></td></tr>

<tr><td>Address:</td>
<td><input type="text" name="address" value="<%=address%>" required="required"  style="color: green;"></td></tr>
		
		<tr><td><button>Update</button></td></tr>
		
		
		
		</table>
		
		
		
		</form>
		
	<% }
	
	%>
	
	
	
                 
	
	

</body>
</html>