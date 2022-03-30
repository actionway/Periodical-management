<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<% 
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");  
String pwd = request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password);
String sql = "insert into user values(?,?)";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,pwd);
ps.executeUpdate();
conn.close();
response.sendRedirect("NewFile1.jsp");
%>
