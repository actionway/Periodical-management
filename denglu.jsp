<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户</title>
<style>
#kuangjia2{
    width:400px;
    height:200px;
    background:	#7FFFD4;
	position:fixed;
	top:50%;
	right:50%;
	border-radius: 25px;
}

#kuangjia3{
    width:500px;
    height:300px;
    background:	#7613D4;
	position:fixed;
	top:20%;
	right:20%;
	border-radius: 15px;
}
#kuangjia{
    width:250px;
    height:100px;
    background:	#F5F5DC;
	position:fixed;
	top:50%;
	right:50%;
	border-radius: 25px;
}
#name{
border-radius: 5px;}
#pwd{
border-radius: 5px;}
</style>
</head>
<body>
<div id="kuangjia3">
<div id="kuangjia2">
<div id="kuangjia">
<form action="lo.jsp"method="post">
<br/>
			用户名<input type="text" name="name" id="name">
			<br/>
			&nbsp密 码  &nbsp<input type="password" name="pwd" id="pwd">
			<br/>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<input type="submit"value= "登录">&nbsp&nbsp&nbsp&nbsp
			<input type="reset" value= "重  置">&nbsp&nbsp&nbsp&nbsp

		</form>
		</div>
		</div>
</body>

</html>
