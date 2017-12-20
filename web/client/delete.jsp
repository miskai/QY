<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/21
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客户删除</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookClient.jsp">客户查询</a></td><td><a href="add.jsp">客户增加</a></td><td><a href="update.jsp">客户修改</a></td><td><a>客户删除</a></td></th>
    </table>
    <hr>
    <h2>删除客户信息</h2>
    <form action="deleteing.jsp" method="post">
        要删除客户的姓名:&nbsp;<input type="text" name="name"><br>
        <input type="submit" value="删除">&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
