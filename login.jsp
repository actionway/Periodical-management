<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<title>用户登录</title>
		<link rel="stylesheet" href="index.css" />
	</head>
	<body>
	<form action="lo.jsp"method="post">
		<div class="login">
			<h2>管理员登录</h2>
		
			<div class="login_box">
				<!-- required就是不能为空 必须在css效果中有很大的作用 -->
				<!-- 可以简写为required -->
				<input type="text" required name="name" id="name"/><label>用户名</label>
			</div>
			<div class="login_box">
				<input type="password" required="required" name="pwd" id="pwd"/><label>密码</label>
			</div>
			<input id="a" type="submit"value= "登录" >
				
			
		</div>
		</form>
	</body>
</html>