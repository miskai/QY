<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/21
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加客户信息</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookClient.jsp">客户查询</a></td><td><a>客户增加</a></td><td><a href="update.jsp">客户修改</a></td><td><a href="delete.jsp">客户删除</a></td></th>
    </table>
    <hr>
    <h2>添加客户信息</h2>
    <form action="adding.jsp" method="post">
        客户姓名:&nbsp;<input type="text" name="name"><br>
        客户电话:&nbsp;<input type="text" name="phone"><br>
        客户邮箱:&nbsp;<input type="text" name="email"><br>
        客户地址:&nbsp;<input type="text" name="address"><br>
        <input type="submit" value="添加">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
