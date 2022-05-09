<%--
  Created by IntelliJ IDEA.
  User: 54333
  Date: 2022/5/8
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>最收欢迎节目</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="org.postgresql.Driver"
                   url="jdbc:postgresql://localhost:15432/dbproject?useUnicode=true&characterEncoding=utf-8"
                   user="gaussdb"  password="Password@123"/>

<sql:query dataSource="${snapshot}" var="result">
    SELECT ratings.tconst,titlebasics."primaryTitle",averagerating,numvotes FROM ratings LEFT join titlebasics
    on titlebasics.tconst=ratings.tconst
    ORDER BY numvotes DESC
</sql:query>
<h1>最受欢迎节目（参评人数为准）</h1>
<table border="1" width="100%">
    <tr>
        <th>id</th>
        <th>电影/电视剧名</th>
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
