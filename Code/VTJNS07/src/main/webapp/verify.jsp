<%@page import="com.database.Database"%>
<%@page import="java.io.PrintWriter"%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.bean.RandomKeys"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String uname=request.getParameter("uname");
String uemail=request.getParameter("uemail");
String adhar=request.getParameter("adhar");
String bank=request.getParameter("bank");


String ifs=RandomKeys.getIfsc(5);


String ifsc=bank+""+ifs;%>
<p><%=ifsc %>
<% 
String Accounno=RandomKeys.getAccountNo(12);
String sql="update customer set Ifscode='"+ifsc+"', Account_No='"+Accounno+"' where Bank='"+bank+"' and Email='"+uemail+"'";
Connection con=Database.getConnection();
Statement s=con.createStatement();
boolean b=s.execute(sql);
PrintWriter o=response.getWriter();
if(b==false){
	o.println("<script type=\"text/javascript\">");
	o.println("alert('user Approved Successfully...');");
	o.println("window.location='bankhomehome.jsp';</script>");
}
else{
	o.println("<script type=\"text/javascript\">");
	o.println("alert('user request failed...');");
	o.println("window.location='verify.jsp';</script>");
}

%>

</body>
</html>