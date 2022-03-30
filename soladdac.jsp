<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% 
request.setCharacterEncoding("utf-8");
String Pdc = request.getParameter("Pdc");  
String Journ = request.getParameter("Journ");
String Suby = request.getParameter("Suby");  
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password);
String sql = "insert into sol values(?,?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,Pdc);
ps.setString(2,Journ);
ps.setString(3,Suby);
ps.executeUpdate();
conn.close();
response.sendRedirect("solpage.jsp");
%>

