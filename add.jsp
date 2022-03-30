<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% 
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");  
String bookname = request.getParameter("bookname");
String author = request.getParameter("author");  
String press = request.getParameter("press");
String pubdate = request.getParameter("pubdate");  
String price = request.getParameter("price");
String isbn = request.getParameter("isbn");
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password);
String sql = "insert into book values(?,?,?,?,?,?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,bookname);
ps.setString(3,author);
ps.setString(4,press);
ps.setString(5,pubdate);
ps.setString(6,price);
ps.setString(7,isbn);
ps.executeUpdate();
conn.close();
response.sendRedirect("tianjia.jsp");
%>


