<%--
  Created by IntelliJ IDEA.
  User: 54333
  Date: 2022/5/8
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.*" %>
<%@ page import="testlei.testclass" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电影详情页</title>
</head>
<body>

<h1><%=testclass.selectm(request.getParameter("submit"),0)%></h1>
<h1><%=testclass.selectm(request.getParameter("submit"),1)%></h1>
<h1><%=testclass.selectm(request.getParameter("submit"),2)%></h1>
<h1><%=testclass.selectm(request.getParameter("submit"),3)%></h1>
</body>
</html>
