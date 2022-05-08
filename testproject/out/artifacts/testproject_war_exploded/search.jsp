<%--
  Created by IntelliJ IDEA.
  User: 54333
  Date: 2022/5/8
  Time: 13:25
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
    <title>Title</title>
</head>
<body>
<%
    String text = request.getParameter("name");
%>
<table border="1" width="100%">
    <tr>
        <th>id</th>
        <th>titleType</th>
        <th>名称</th>
        <th>原名（originalTitle）</th>
    </tr>
    <%
        String[] a=testclass.selectn(text);
    %>
    <tr>
        <td><%=a[0]%></td>
        <td><%=a[1]%></td>
        <td><%=a[2]%></td>
        <td><%=a[3]%></td>

    </tr>
</table>
</body>
</html>
