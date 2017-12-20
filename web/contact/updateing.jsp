<%@ page import="contact.ContactImp" %>
<%@ page import="contact.Contact" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/27
  Time: 17:24
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
    String contactName=request.getParameter("contactName");
    String contents=request.getParameter("contents");
    String start=request.getParameter("start");
    String end=request.getParameter("end");
    String staffName=request.getParameter("staffName");
    System.out.println(clientName+contactName+contents+start+end+staffName);
    Contact contact=new Contact();
    if(""!=contents){
        contact.setContactName(contactName);
        contact.setContactContents(contents);
        contact.setContactStart(start);
        contact.setContactEnd(end);
        contact.setStaffName(staffName);
        contact.setClientName(clientName);
           int n= new ContactImp().Update(contact);
           if(n>0){
               out.print("合同修改成功!");
           }else {
               out.print("合同修改失败!");
           }
    }else {
        out.print("合同内容不能为空!");
    }
%>
</body>
</html>
