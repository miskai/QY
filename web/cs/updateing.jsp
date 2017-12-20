<%@ page import="cs.Cs" %>
<%@ page import="cs.CsImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/28
  Time: 16:43
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
    String clientName=request.getParameter("clientName");
    String Opinion=request.getParameter("Opinion");
    String staffName=request.getParameter("staffName");
    Cs cs=new Cs();
    cs.setClientName(clientName);
    cs.setClientOpinion(Opinion);
    cs.setStaffName(staffName);
    int n=new CsImp().Update(cs);
    if(n>0){
        out.print("修改成功!");
    }else {
        out.print("修改失败!");
    }
%>
</body>
</html>
