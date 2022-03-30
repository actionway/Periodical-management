<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%--导入java.sql包--%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head><base href="<%=basePath%>">
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");  
String pwd =  request.getParameter("pwd");
%>
<%
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password);
String sql = "select * from user where name='"+ name +"'and pwd='"+ pwd + "'";
Statement stmt = null;
ResultSet rs = null;
stmt = conn.createStatement();
rs = stmt.executeQuery(sql);	
//语句对象			
if(rs.next()){
                    response.sendRedirect("homepage.jsp");  
                }else{
                    response.sendRedirect("login.jsp"); 
                }
     rs.close();
    
     conn.close();

%>


</body>
</html>
