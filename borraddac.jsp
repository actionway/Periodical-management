<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% 
request.setCharacterEncoding("utf-8");
String Usernum = request.getParameter("Usernum");  
String Username = request.getParameter("Username");
String Journ = request.getParameter("Journ");  
String Year = request.getParameter("Year");  
String Roll = request.getParameter("Roll");
String Duty = request.getParameter("Duty");  
String Borrowday = request.getParameter("Borrowday");   
String Returnday = request.getParameter("Returnday");   
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password);
String sql = "insert into borr values(?,?,?,?,?,?,?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,Usernum);
ps.setString(2,Username);
ps.setString(3,Journ);
ps.setString(4,Year);
ps.setString(5,Roll);
ps.setString(6,Duty);
ps.setString(7,Borrowday);
ps.setString(8,Returnday);
ps.executeUpdate();
conn.close();
response.sendRedirect("borrpage.jsp");
%>