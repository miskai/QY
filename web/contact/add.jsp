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
    <title>添加合同</title>
    <link href="../css/head.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<center>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a href="lookContact.jsp">合同查询</a></td><td><a>合同增加</a></td><td><a href="update.jsp">合同修改</a></td><td><a href="delete.jsp">合同删除</a></td></th>
    </table>
    <hr>
    <h2>添加合同</h2>
    <form action="adding.jsp" method="post">
        客户姓名:&nbsp;<input type="text" name="clientName"><br>
        合同名称:&nbsp;<input type="text" name="contactName"><br>
        合同内容:&nbsp;<input type="text" name="contents"><br>
        生效日期:&nbsp;<input type="text" name="start"><br>
        有效时间:&nbsp;<input type="text" name="end"><br>
        业&nbsp;务&nbsp;员&nbsp;:&nbsp;&nbsp;<input type="text" name="staffName"><br>
        <input type="submit" value="添加">&nbsp;&nbsp;&nbsp;<input type="reset" value="取消">
    </form>
</center>
</body>
</html>
