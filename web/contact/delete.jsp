<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/27
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="../css/head.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookContact.jsp.jsp">合同查询</a></td><td><a href="add.jsp">合同增加</a></td><td><a href="update.jsp">合同修改</a></td><td><a>合同删除</a></td></th>
    </table>
    <hr>
    <h2>合同删除</h2>
    <form method="post" action="deleteing.jsp">
        要删除合同的名称:&nbsp;<input type="text" name="name"><br>
        <input type="submit" value="删除">&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
