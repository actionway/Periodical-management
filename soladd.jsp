<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>

</head>
<style>
body{
background-image: url('ert.jpg');
}
input[type=text] {
  width: 30%;
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
</style>
<body>
<ul>
  <li><a class="active" onclick="location='solpage.jsp'">返回</a></li>

</ul>
<center>
<br/><br/><br/><br/><br/>
<form action="soladdac.jsp"method="post" name="re">
			<input type="text" name="Pdc" id="Pdc" placeholder="请输入要加入的邮发代号">
			<br/>			
			<input type="text" name="Journ" id="Journ" placeholder="请输入要加入的期刊名称">
			<br/>
			<input type="text" name="Suby" id="Suby" placeholder="请输入要加入的订阅年份">
			<br/>
			<input type="submit" class="button button1" name="Submit" value="添加" >
			</form>
			</center>

</body>

</html>