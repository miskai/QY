<%@ page import="client.Client" %>
<%@ page import="client.ClientImp" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/26
  Time: 19:19
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
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    System.out.println(name);
    Client client=new ClientImp().find(name);
    System.out.println(client.getName());
    if(null != client.getName()){
        Client client2=new Client();
        client2.setName(name);
        client2.setEmail(email);
        client2.setAddress(address);
        client2.setTelephone(phone);
    int n=new ClientImp().Update(client2);
    if(n>0){
        out.println("修改成功！");
    }else {
       out.println("修改失败");
    }
    }else {
       out.println("没有此人，无法修改。");
    }
%>
</body>
</html>
