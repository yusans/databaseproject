<%@ page import="testlei.count" %>
<%@ page import="testlei.testclass" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 54333
  Date: 2022/5/6
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <p>
    日期: <%= (new Date()).toString()%>
  </p>
  <button onclick="window.location.href='./topMovie.jsp'">评分TOP100电影</button>
  <button onclick="window.location.href='./topTVshow.jsp'">评分TOP100电视节目</button>
  <button onclick="window.location.href='./mostPop.jsp'">最受欢迎节目</button>
  <button onclick="window.location.href='./admin/admin.jsp'">管理员登录</button>

  <form action="search.jsp">
    <input type="text" name="name">
    <button onclick="window.location.href='./search.jsp'">查找</button>
  </form>
  </body>
</html>
