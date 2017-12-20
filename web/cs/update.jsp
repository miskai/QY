<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 16:00
  To change this template use File | Settings | File Templates.

  只能修改建议内容
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>售后修改</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookcs.jsp">售后查询</a></td><td><a href="add.jsp">售后增加</a></td><td><a>售后修改</a></td><td><a href="delete.jsp">售后删除</a></td></th>
    </table>
    <hr>
    <h2>售后修改</h2>
    <form action="updateing.jsp" method="post">
        客户姓名:&nbsp;<input type="text" name="clientName"><br>
        客户建议:&nbsp;<input type="text" name="Opinion"><br>
        业&nbsp;务&nbsp;员&nbsp;:&nbsp;&nbsp;<input type="text" name="staffName"><br>
        <input type="submit" value="修改">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
