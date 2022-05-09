<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/5/8
  Time: 14:58
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
    String tconst = request.getParameter("id");
    String titleType = request.getParameter("titleType");
    String primaryTitle = request.getParameter("primaryTitle");
    String originalTitle = request.getParameter("originalTitle");
    int isAdult = Integer.parseInt(request.getParameter("isAdult"));
    int startYear = Integer.parseInt(request.getParameter("startYear"));
    int endYear = Integer.parseInt(request.getParameter("endYear"));
    int runtimeMinutes = Integer.parseInt(request.getParameter("runtimeMinutes"));
    String genres = request.getParameter("genres");
    Connection c = null;
    Statement stmt = null;
    try {
        Class.forName("org.postgresql.Driver");
        c = DriverManager.getConnection("jdbc:postgresql://localhost:15432/dbproject", "gaussdb", "Password@123");
        c.setAutoCommit(false);
        System.out.println("Connect to database gaussdb successfully !");
        stmt = c.createStatement();
        String sql = "UPDATE titlebasics set \"titleType\"= "+titleType +",\"primaryTitle\"='"+ primaryTitle+"',\"originalTitle\"="+
                originalTitle+",\"isAdult\" ='"+ isAdult+"',\"startYear\" ="+ startYear+",\"endYear\" ="+ endYear+",\"runtimeMinutes\"="
                + runtimeMinutes+",\"genres\" ="+ genres+" where \"tconst\" ='"+tconst+"'";
        stmt.executeUpdate(sql);
        stmt.close();
        c.commit();
        c.close();
    }
    catch (Exception e) {
        System.err.println(e.getClass().getName() + ": " + e.getMessage());
        System.exit(0);
    }
    response.setHeader("refresh","5;URL=./search.jsp");
%>
修改数据成功

</body>
</html>
