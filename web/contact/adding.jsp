<%@ page import="contact.Contact" %>
<%@ page import="contact.ContactImp" %>
<%@ page import="client.ClientImp" %>
<%@ page import="staff.StaffImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/27
  Time: 9:46
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
    /*String clientName=request.getParameter("clientName");
    String contactName=request.getParameter("contactName");
    String contents=request.getParameter("contents");
    String staffName=request.getParameter("staffName");
    String start=request.getParameter("start");
    String end=request.getParameter("end");*/
    Contact client = new Contact();
    String name = request.getParameter("contactName");
    if ("" != name) {
        client.setClientName(request.getParameter("clientName"));
        client.setContactName(name);
        client.setContactContents(request.getParameter("contents"));
        client.setContactStart(request.getParameter("start"));
        client.setContactEnd(request.getParameter("end"));
        client.setStaffName(request.getParameter("staffName"));
        int n = new ContactImp().add(client);
        if (n > 0) {
            out.print("添加成功！");
        } else {
            out.print("添加失败！");
        }
    } else {
        out.print("合同名不能为空!");
    }
%>
</body>
</html>
