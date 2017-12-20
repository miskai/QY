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
    <title>员工修改</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css">
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookstaff.jsp">查询员工</a></td><td><a href="add.jsp">员工增加</a></td><td><a>员工修改</a></td><td><a href="delete.jsp">员工删除</a></td></th>
    </table>
    <hr>
    <h2>员工修改</h2>
    <form action="updateing.jsp" method="post">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 姓名:&nbsp;<input type="text" name="Name"><br>
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;性别:&nbsp;<input type="text" name="sex"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;年龄:&nbsp;<input type="text" name="age"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学历:&nbsp;<input type="text" name="education"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;部门:&nbsp;<input type="text" name="departMent"><br>
        入职时间:&nbsp;<input type="text" name="date"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;职务:&nbsp;<input type="text" name="duty"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工资:&nbsp;<input type="text" name="wage"><br>
        <input type="submit" value="修改">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
