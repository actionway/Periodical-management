<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%  
		request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<style>
body{
background-image: url('ert.jpg');
}
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
    box-shadow: 10px 10px 5px #888888;
}
th{
background-image: linear-gradient(#32CD32, #ADFF2F);

color:black;}
td{
 height: 20px;

   background-image: linear-gradient(#FAEBD7, #DEB887);
    color:black;
    }

</style>
<body>
<br>
<br>
<br>
<ul>
  <li><a class="active" onclick="location='subpage.jsp'" >返回</a></li>
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
String sql = "SELECT * FROM sub;"; //查询语句
stmt = conn.createStatement();
rs = stmt.executeQuery(sql);
%>
<table border="1" id="overflowTest">
<tr>
				<th>期刊名称</th>
				<th>年</th>
				<th>卷</th>
				<th>期</th>
				<th>论文题目</th>
				<th>作者</th>
				<th>关键词</th>
				<th>页码</th>
			
			
				
			</tr>
<%

while(rs.next()){
	
	String Journ2=rs.getString("Journ");
	System.out.println(Journ1.equals(Journ2));
	System.out.println(Journ1);
	System.out.println(Journ2);

	if(Journ1.equals(Journ2)){
	
%>
    <tr>
        
   			<td><%=rs.getString("Journ")%></td>
				<td><%=rs.getString("Year")%></td>
				<td><%=rs.getString("Roll")%></td>
				<td><%=rs.getString("Duty")%></td>
				<td><%=rs.getString("Title")%></td>
				<td><%=rs.getString("Author")%></td>
				<td><%=rs.getString("Keyword")%></td>
				<td><%=rs.getString("Page")%></td>
			
    </tr>
<%
}  }

rs.close();

conn.close();
%>
<br/><br/><br/>
</center>
</table>
</body>
</html>