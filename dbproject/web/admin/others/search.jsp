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
  <link rel="stylesheet" href="../../CSS/table.css" type="text/css">
  <title>Title</title>
</head>
<body>
<%
  String text = request.getParameter("name");
%>
<table>
  <caption><%=text%></caption>
  <thead>
  <tr>
    <th>id</th>
    <th>titleType</th>
    <th>名称</th>
    <th>原名（originalTitle）</th>
    <th>isAdult</th>
    <th>startYear</th>
    <th>endYear</th>
    <th>runtimeMinutes</th>
    <th>genres</th>
  </tr>
  </thead>
  <tbody>
  <%String[] a=testclass.selectn(text);
    for(int n=0;n<a.length;n=n+9) {%>
  <tr>
    <td><%=a[0+n]%></td>
    <td><%=a[1+n]%></td>
    <td><%=a[2+n]%></td>
    <td><%=a[3+n]%></td>
    <td><%=a[4+n]%></td>
    <td><%=a[5+n]%></td>
    <td><%=a[6+n]%></td>
    <td><%=a[7+n]%></td>
    <td><%=a[8+n]%></td>
  </tr>
  <%}%>
  </tbody>
</table>

<table>
  <tr>
    <form action="update_titlebasics1.jsp">
      <td>tconst</td>
      <td><input type="text" name="tconst" /></td>
      <td ><input type="submit" value="update" /></td>
    </form>
  </tr>
  <tr>
    <form action="delete.jsp">
      <td>tconst</td>
      <td><input type="text" name="tconst" /></td>
      <td ><input type="submit" value="delete" /></td>
    </form>
  </tr>
</table>

</body>
</html>
