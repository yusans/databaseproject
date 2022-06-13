<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/5/8
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%><%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.*" %>
<%@ page import="testlei.testclass" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更改数据</title>
</head>
<body>
<%String a= request.getParameter("tconst");%>
<%String[] tit=testclass.upS(a);%>
<form action="update_titlebasics2.jsp">
<table >
    <tr>
        <td>tconst</td>
        <td><input type="text" name="id"  value="<%=tit[0]%>" readonly /></td>
    </tr>
    <tr>
    </tr>
    <tr>
        <td>titleType：</td>
        <td><input type="text" name="titleType" value="<%=tit[1]%>" /></td>
    </tr>
    <tr>
         <td>primaryTitle：</td>
        <td><input type="text" name="primaryTitle" value="<%=tit[2]%>"/></td>
    </tr>
    <tr>
        <td>originalTitle：</td>
        <td><input type="text" name="originalTitle"value="<%=tit[3]%>" /></td>
    </tr>
    <tr>
        <td>isAdult：</td>
        <td><input type="text" name="isAdult"value="<%=tit[4]%>" /></td>
    </tr>
    <tr>
        <td>startYear：</td>
        <td><input type="text" name="startYear" value="<%=tit[5]%>"/></td>
    </tr>
    <tr>
        <td>endYear：</td>
        <td><input type="text" name="endYear"value="<%=tit[6]%>" /></td>
    </tr>
    <tr>
        <td>runtimeMinutes：</td>
        <td><input type="titleType" name="runtimeMinutes" value="<%=tit[7]%>"/></td>
    </tr>
    </tr>
    <tr>
        <td>genres：</td>
        <td><input type="titleType" name="genres" value="<%=tit[8]%>"/></td>
    </tr>
    <tr>
        <td ><input type="submit" value="提交" name="submit"/></td>
    </tr>
</table>
</form>
</body>
</html>
