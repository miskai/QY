<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>售后删除</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookcs.jsp">售后查询</a></td><td><a href="add.jsp">售后增加</a></td><td><a href="update.jsp">售后修改</a></td><td><a>售后删除</a></td></th>
    </table>
    <hr>
    <h2>售后删除</h2>
    <form action="deleting.jsp" method="post">
        要删除售后客户的名字:&nbsp;<input type="text" name="name"><br>
        <input type="submit" value="删除">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
