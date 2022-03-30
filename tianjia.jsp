<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
</head>
<body>
<form action="add.jsp"method="post" name="re">
			<input type="text" name="id" id="id">
			<br/>			
			<input type="text" name="bookname" id="bookname">
			<br/>
			<input type="text" name="author" id="author">
			<br/>
			<input type="text" name="press" id="press">
			<br/>
			<input type="text" name="pubdate" id="pubdate">
			<br/>
			<input type="text" name="price" id="price">
			<br/>
			<input type="text" name="isbn" id="isbn">
			<br/>
			<input type="submit"  name="Submit" value="添加" >
			</form>

</body>

</html>
