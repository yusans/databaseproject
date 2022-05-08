<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/5/7
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Top100电影</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
                   url="jdbc:postgresql://localhost:15432/dbproject?useUnicode=true&characterEncoding=utf-8"
                   user="gaussdb"  password="Password@123"/>

<sql:query dataSource="${snapshot}" var="result">
    SELECT ratings.tconst,titlebasics."primaryTitle",averagerating,numvotes FROM ratings LEFT join titlebasics
    on titlebasics.tconst=ratings.tconst
    WHERE titlebasics.genres='movie'
    ORDER BY averagerating DESC
</sql:query>
<h1>Top100电影</h1>
<table border="1" width="100%">
    <tr>
        <th>id</th>
        <th>电影名</th>
        <th>评分</th>
        <th>参评人数</th>
    </tr>
    <c:forEach var="row" items="${result.rows}">
        <tr>
            <td><form action="details/movieDetail.jsp"><input type="submit" value="${row.tconst}" name="submit">
            </form></td>
            <td><c:out value="${row.primaryTitle}"/></td>
            <td><c:out value="${row.averagerating}"/></td>
            <td><c:out value="${row.numvotes}"/></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
