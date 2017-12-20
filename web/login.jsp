<%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/20
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>企业信息管理系统--登录界面</title>
    <meta http-equiv="content-type" content="text/html" charset="UTF-8">
    <style type="text/css">
        input{
            margin-bottom: 5px;
        }
        body{
            width: 100%;
            height: 100%;
            background: url("./img/login3.jpg") no-repeat fixed;
            background-size: cover;
            -moz-background-size: cover;
            -webkit-background-size: cover;
        }
    </style>
</head>
<body>
<center>

    <form action="loginCheck.jsp" method="post">
        <table border="0" cellspacing="0" cellpadding="0" width="360" height="200" >
        <tr>
            <td align="center">
                <h2>企业信息管理系统登录</h2><br>
                账号:&nbsp;<input type="text" name="userName" size="22">
                <br>
                密码:&nbsp;<input type="password" name="passWord" size="22">
               <br>
                <input type="submit" value="登录" style="background: #81C498;">
                &nbsp;&nbsp;&nbsp;
                <input type="reset" value="清楚" style="background: #81C498;">
            </td>
        </tr>
           <%-- <tr height="30">
            <td bgcolor="#95BDFF">&nbsp;&nbsp;</td>
            </tr>--%>
        </table>
    </form>
</center>
</body>
</html>
