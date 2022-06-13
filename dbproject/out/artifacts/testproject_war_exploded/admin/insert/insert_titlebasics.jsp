<%--
  Created by IntelliJ IDEA.
  User: 86158
  Date: 2022/5/8
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>插入数据</title>
</head>
<body>

<form action="insert_titlebasics2.jsp">

<table >
    <tr>
        <td>tconst</td>
        <td><input type="text" name="tconst"  /></td>
    </tr>
    <tr>
        <td>titleType：</td>
        <td><input type="text" name="titleType" /></td>
    </tr>
    <tr>
         <td>primaryTitle：</td>
        <td><input type="text" name="primaryTitle" /></td>
    </tr>
    <tr>
        <td>originalTitle：</td>
        <td><input type="text" name="originalTitle" /></td>
    </tr>
    <tr>
        <td>isAdult：</td>
        <td><input type="text" name="isAdult" /></td>
    </tr>
    <tr>
        <td>startYear：</td>
        <td><input type="text" name="startYear" /></td>
    </tr>
    <tr>
        <td>endYear：</td>
        <td><input type="text" name="endYear" /></td>
    </tr>
    <tr>
        <td>runtimeMinutes：</td>
        <td><input type="titleType" name="runtimeMinutes" /></td>
    </tr>
    </tr>
    <tr>
        <td>genres：</td>
        <td><input type="titleType" name="genres" /></td>
    </tr>
    <tr>
        <td ><input type="submit" value="提交" /></td>
    </tr>
</table>
</form>
</body>
</html>
