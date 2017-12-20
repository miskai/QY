<%@ page import="Utils.JdbcUtils" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/20
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>数据处理页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String userName=request.getParameter("userName");
    String passWord=request.getParameter("passWord");
    System.out.println(userName+"    "+passWord);
    if(userName.equals("")&&passWord.equals("")){
        response.sendRedirect("login.jsp");
    }
    Connection con=null;
    Statement st=null;
    ResultSet rs=null;
    try{
     con=JdbcUtils.getConnection();
     st=con.createStatement();
    String sql="select * from myuser where userName='"+userName+"'";
     rs=st.executeQuery(sql);
        System.out.println("执行sql");
    if(rs.next()){
        String sql2="select * from myuser where password='"+passWord+"'";
        System.out.println("进来");
        rs=st.executeQuery(sql2);
        if(rs.next()){
            String type=rs.getString("type");
            response.sendRedirect("./main/main.jsp");
            session.setAttribute("type",type);
            System.out.println(session.getId());

        }else {

            response.sendRedirect("login.jsp");
        }
    }else {
        response.sendRedirect("login.jsp");
    }
    }catch (Exception e){
        e.printStackTrace();
    }finally {
        JdbcUtils.release(rs,st,con);
    }
%>
</body>
</html>
