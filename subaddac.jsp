<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% 
request.setCharacterEncoding("utf-8");
String Journ = request.getParameter("Journ");  
String Year = request.getParameter("Year");
String Roll = request.getParameter("Roll");  
String Duty = request.getParameter("Duty");  
String Title = request.getParameter("Title");
String Author = request.getParameter("Author");  
String Keyword = request.getParameter("Keyword");   
String Page = request.getParameter("Page");   
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password);
String sql = "insert into sub values(?,?,?,?,?,?,?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,Journ);
ps.setString(2,Year);
ps.setString(3,Roll);
ps.setString(4,Duty);
ps.setString(5,Title);
ps.setString(6,Author);
ps.setString(7,Keyword);
ps.setString(8,Page);
ps.executeUpdate();
conn.close();
response.sendRedirect("subpage.jsp");
%>