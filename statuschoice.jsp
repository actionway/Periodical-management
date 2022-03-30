<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="NewFile.css">
<meta charset="utf-8">
<title>Insert title here</title>
<style>
*{
            margin: 0;
            padding: 0;
         }
         div{
             width:100%;
             height: 100%;
             position: absolute;        }
body{
}
#abc{
height:100%;
background-image: url('ert.jpg');}
#abc2{
background: linear-gradient(#7FFFAA, #00008B);
width:500px;
height:500px;
top:50px;
left:35%;
border-radius: 50px;
}
a{
	left:10px;
	width: 200px;}

</style>
</head>

<body>

<div id="abc">
<div id="abc2">

<a style="margin:100px;">&nbsp;&nbsp;&nbsp;&nbsp;请选择身份&nbsp;&nbsp;&nbsp;&nbsp;</a>
<br>
<br>
<a   onclick="location='login.jsp'" style="margin:105px;">(&nbsp;&nbsp;&nbsp;&nbsp;管理员&nbsp;&nbsp;&nbsp;&nbsp;)</a>
<br>
<br>
<a onclick="location='logins.jsp'"style="margin:110px;">(&nbsp;&nbsp;&nbsp;&nbsp;学生&nbsp;&nbsp;&nbsp;&nbsp;)</a>
</div>
</div>

</body>

</html>