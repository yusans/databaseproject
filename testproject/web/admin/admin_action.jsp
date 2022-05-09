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
    Statement stmt;
    Connection c;
    try
    {
        Class.forName( "org.postgresql.Driver");
        c = DriverManager.getConnection( "jdbc:postgresql://localhost:15432/dbproject", "gaussdb", "Password@123");
        c.setAutoCommit( false);
        stmt = c.createStatement();
        String sql = "select * from admin where username=" + username + " and password=" + password;
        ResultSet rs = stmt.executeQuery(sql);
        if ( rs.next() ) {
            response.sendRedirect("welcome.jsp");
        }
        rs.close();
        stmt.close();
        c.close();
    }
    catch (Exception e)
    {
        e.printStackTrace();
    }
%>
</body>
</html>
