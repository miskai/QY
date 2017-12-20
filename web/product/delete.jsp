<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除产品</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookproduct.jsp">查询产品</a></td><td><a href="add.jsp">产品增加</a></td><td><a href="update.jsp">产品修改</a></td><td><a>产品删除</a></td></th>
    </table>
    <hr>
    <h2>删除产品</h2>
    <form action="delting.jsp" method="post">
        请输入要删除产品的名称:&nbsp;<input type="text" name="productName"><br>
        <input type="submit" value="删除">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
