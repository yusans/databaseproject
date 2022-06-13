<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/5/8
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String tconst = request.getParameter("tconst");
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
        String sql = "INSERT INTO titlebasics VALUES ("+tconst+","+titleType +",'"+ primaryTitle+"',"+ originalTitle+",'"+ isAdult+"',"+ startYear+","+ endYear+","+ runtimeMinutes+","+ genres+");";
        stmt.executeUpdate(sql);
        stmt.close();
        c.commit();
        c.close();
    }
    catch (Exception e) {
        System.err.println(e.getClass().getName() + ": " + e.getMessage());
        System.exit(0);
    }
    response.setHeader("refresh","2;URL=./insert1.jsp");
%>
    插入数据成功

</body>
</html>
