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
<table border="1" width="100%">
<%  String text = request.getParameter("submit");
    String[] a=testclass.selectm(text);
    %>
    <tr>
        <th>标题</th>
        <th>地区</th>
        <th>语言</th>
        <th>顺序</th>
    </tr>
<tr>
    <td><%=a[0]%></td>
    <td><%=a[1]%></td>
    <td><%=a[2]%></td>
    <td><%=a[3]%></td>
</tr>

</table>
</body>
</html>
