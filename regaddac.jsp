<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% 
request.setCharacterEncoding("utf-8");
String Journ = request.getParameter("Journ");  
String Year = request.getParameter("Year");
String Roll = request.getParameter("Roll");  
String Duty = request.getParameter("Duty");  
String Index = request.getParameter("Index");
String Borrow = request.getParameter("Borrow");  
String Numelse = request.getParameter("Numelse");   
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password);
String sql = "insert into reg values(?,?,?,?,?,?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,Journ);
ps.setString(2,Year);
ps.setString(3,Roll);
ps.setString(4,Duty);
ps.setString(5,Index);
ps.setString(6,Borrow);
ps.setString(7,Numelse);
ps.executeUpdate();
conn.close();
response.sendRedirect("regpage.jsp");
%>