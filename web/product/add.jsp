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
    <title>增加产品</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookproduct.jsp">查询产品</a></td><td><a>产品增加</a></td><td><a href="update.jsp">产品修改</a></td><td><a href="delete.jsp">产品删除</a></td></th>
    </table>
    <hr>
    <h2>添加产品</h2>
    <form action="adding.jsp" method="post">
        产品名称:&nbsp;<input type="text" name="productName"><br>
        产品型号:&nbsp;<input type="text" name="productModel"><br>
        产品数量:&nbsp;<input type="text" name="productNumber"><br>
        产品价格:&nbsp;<input type="text" name="productPrice"><br>
        <input type="submit" value="添加">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
