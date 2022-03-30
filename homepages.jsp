<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%--导入java.sql包--%>
<!DOCTYPE >
<html>
<head>
<meta charset="utf-8">
<title>期刊管理系统主页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}
.hll{
color:white;}
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
body {
  margin: 0;
}

/* 头部样式 */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
  background-image: url('hotel.jpg');
}

/* 导航条 */
.topnav {
  overflow: hidden;
  background-image: linear-gradient(to right, red , yellow);
}

/* 导航链接 */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* 链接 - 修改颜色 */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* 创建三个相等的列 */
.column1 {
  float: left;
  width: 33.33%;
 height:80%;
 background-image: url('libary4.jpg');
}
.column2 {
  float: left;
  width: 33.33%;
 height:80%;
 background-image: url('libary2.jpg');
}
.column3 {
  float: left;
  width: 33.33%;
  height:80%;
 background-image: url('libary.jpg');
}
 
/* 列后清除浮动 */
.row:after {
  content: "";
  display: table;
  clear: both;
}
 
/* 响应式布局 - 小于 600 px 时改为上下布局 */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
</style>
</head>
<body>
<ul>
  <li><a class="active" onclick="location='homepages.jsp'">主页</a></li>
  
  <li><a href="#contact" onclick="location='regpages.jsp'"> 期刊登记表</a></li>
  <li><a href="#about" onclick="location='subpages.jsp'">期刊内容表</a></li>

  <li><a href="#asc" onclick="location='statuschoice.jsp'">退出</a></li>
</ul>
<div class="header">
  <br><br>
  <h1>期刊管理系统</h1>
 
</div>

<div class="topnav">
  <a href="#"></a>

</div>

<div class="row">
  <div class="column1">
    <h2 class="hll">第一列</h2>
    <p  class="hll">文章</p>
  </div>
  
  <div class="column2">
    <h2>第二列</h2>
    <p>文章</p>
  </div>
  
  <div class="column3">
    <h2 class="hll">第三列</h2>
    <p class="hll">文章</p>
  </div>
</div>

</body>
</html>