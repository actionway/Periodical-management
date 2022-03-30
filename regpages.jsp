<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%--导入java.sql包--%>
<!DOCTYPE >
<html>
<head>
<title>从db_book数据库中读出book表</title>
<style>
body{
background-image: url('hotel.jpg');
}
input[type=text] {
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=text]:focus {
  border: 3px solid #555;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
.button:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
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
    
}
th{
background-image: linear-gradient(#e66465, #9198e5);

color:black;}
td{
 height: 20px;

    background-image: linear-gradient(to right, red , orange);
    color:black;
    }

</style>
</head>
<body>
	<center>
	<ul>
  <li><a class="active" onclick="location='homepages.jsp'">主页</a></li>
  
  <li><a href="#contact" onclick="location='regpages.jsp'"> 期刊登记表</a></li>
  <li><a href="#about" onclick="location='subpages.jsp'">期刊内容表</a></li>

  <li><a href="#asc" onclick="location='statuschoice.jsp'">退出</a></li>
</ul>
<br><br><br><br><br>
<h1><center>期刊登记表</center></h1>
			<br/>
			<br/>
			<button onclick="location='regsorts.jsp'" class="button button1">排序</button>
			<form action="regselects.jsp" method="post" name="re">
			<input type="text" name="Journ" id="Journ" placeholder="请输入要查询的期刊名">
			<input type="submit"  name="Submit" value="查找" class="button button1">
			</form>
			<br/><br/>
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver"); //驱动程序名
				String url = "jdbc:mysql://localhost:3306/sqv?characterEncoding=utf8&useSSL=false&serverTimezone=UTC&rewriteBatchedStatements=true"; //数据库名
				String username = "root"; //数据库用户名
				String password = "123456"; //数据库用户密码
				Connection conn = DriverManager.getConnection(url, username, password); //连接状态
				System.out.println("数据库连接成功！");
		%>
	
		<table border="2" id="overflowTest">
			<tr>
				<th>期刊名称</th>
				<th>年</th>
				<th>卷</th>
				<th>期</th>
				<th>索引号</th>
				<th>借阅数</th>
				<th>剩余数量</th>
			
			
				
			</tr>
	
			<%
				Statement stmt = null;
					ResultSet rs = null;
					String sql = "SELECT * FROM reg;"; //查询语句
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					
				
					while (rs.next()) {
			%>
		
			<tr id="er">
			
				<td><%=rs.getString("Journ")%></td>
				<td><%=rs.getString("Year")%></td>
				<td><%=rs.getString("Roll")%></td>
				<td><%=rs.getString("Duty")%></td>
				<td><%=rs.getString("Index")%></td>
				<td><%=rs.getString("Borrow")%></td>
				<td><%=rs.getString("Numelse")%></td>
			
			
			</tr>
			
			<%
				}
				
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("数据库连接失败");
				}
			%>

			</center>
			</table>
			
			<br/><br/>
			
</body>
</html>