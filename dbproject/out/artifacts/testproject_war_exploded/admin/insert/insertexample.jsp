<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/5/8
  Time: 12:53
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
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Connection c = null;
    Statement stmt = null;
    try {
        Class.forName("org.postgresql.Driver");
        c = DriverManager.getConnection("jdbc:postgresql://localhost:15432/dbproject", "gaussdb", "Password@123");
        c.setAutoCommit(false);
        System.out.println("Connect to database gaussdb successfully !");
        stmt = c.createStatement();
        String sql = "INSERT INTO "+username+" VALUES (1, 'Gong', 48, '2075 Kongjiang Road', 20000.00 );";
        stmt.executeUpdate(sql);
        stmt.close();
        c.commit();
        c.close();
    }
    catch (Exception e) {
                System.err.println(e.getClass().getName() + ": " + e.getMessage());
                System.exit(0);
    }

%>
</body>
</html>
