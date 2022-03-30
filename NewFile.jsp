<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<style>

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    position: fixed;
    top: 0;
    width: 100%;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
#overflowTest {
    background: #EEE8AA;
    color: white;
    padding: 15px;
    width: 80%;
    height: 100px;
    overflow: scroll;
    border: 1px solid #ccc;
    
}
th{
background-image: linear-gradient(#e66465, #9198e5);

color:black;}
td{
 height: 20px;

    background-image: linear-gradient(to bottom right, red , yellow);
    color:black;
    }


</style>
<body>
<br>
<br>
<br>
<ul>
  <li><a class="active" onclick="location='solpage.jsp'" >返回</a></li>
</ul>
<center>
<% 
String Journ1 = request.getParameter("Journ");  
Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
String username = "root"; //数据库用户名
String password = "123456"; //数据库用户密码
Connection conn = DriverManager.getConnection(url, username, password); 

Statement stmt = null;
ResultSet rs = null;
String sql = "SELECT * FROM sol;"; //查询语句
stmt = conn.createStatement();
rs = stmt.executeQuery(sql);
%>
<table border="1">
<tr><th>用户id</th><th>用户名</th><th>密码</th></tr>
<%

while(rs.next()){
	
	String Journ2=rs.getString("Journ");

	if(Journ1.equals(Journ2)){
	
%>
    <tr>
        
      
        <td><%out.println(rs.getString("Pdc"));%></td>
        <td><%out.println(rs.getString("Journ"));%></td>
        <td><%out.println(rs.getString("Suby"));%></td>
     
    </tr>
<%
}  }

rs.close();

conn.close();
%>

</center>
</table>
</body>
</html>

