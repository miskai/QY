<%@ page import="staff.StaffImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("Name");
    System.out.println(name);
    int n=new StaffImp().delete(name);
    if(n>0){
        out.print("删除成功！");
    }else {
        out.print("删除失败!");
    }
%>
</body>
</html>
