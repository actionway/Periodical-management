<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% 
request.setCharacterEncoding("utf-8");
String Journ = request.getParameter("Journ");  
String Cn = request.getParameter("Cn");
String Issn = request.getParameter("Issn");  
String Pdc = request.getParameter("Pdc");  
String Cycle = request.getParameter("Cycle");
String Pop = request.getParameter("Pop");  
String Unit = request.getParameter("Unit");   
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password);
String sql = "insert into cata values(?,?,?,?,?,?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,Journ);
ps.setString(2,Cn);
ps.setString(3,Issn);
ps.setString(4,Pdc);
ps.setString(5,Cycle);
ps.setString(6,Pop);
ps.setString(7,Unit);
ps.executeUpdate();
conn.close();
response.sendRedirect("catapage.jsp");
%>