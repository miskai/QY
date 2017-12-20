<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/27
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除员工</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookstaff.jsp">查询员工</a></td><td><a href="add.jsp">员工增加</a></td><td><a href="update.jsp">员工修改</a></td><td><a>员工删除</a></td></th>
    </table>
    <hr>
    <h2>删除员工</h2>
    <form action="deleteing.jsp" method="post">
       请输入删除员工的姓名&nbsp;:&nbsp;<input type="text" name="Name"><br>
        <input type="submit" value="删除">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
