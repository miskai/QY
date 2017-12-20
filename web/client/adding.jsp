<%@ page import="client.Client" %>
<%@ page import="client.ClientImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/26
  Time: 17:25
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
    String name=request.getParameter("name");
    if(""!=name){
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    Client client=new Client();
    client.setName(name);
    client.setTelephone(phone);
    client.setAddress(address);
    client.setEmail(email);
   int n=new ClientImp().add(client);
   if(n>0){
      out.print("添加成功！");
   }else {
      out.print("添加失败！");
   }
        }else {
        out.print("姓名不能为空！");
    }
%>
</body>
</html>
