<%@ page import="java.sql.Connection" %>
<%@ page import="Utils.JdbcUtils" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: misaki
  Date: 2017/11/21
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>客户查询</title>
    <meta http-equiv="content-type" charset="UTF-8" content="text/html">
    <style>
        #td-one{
            padding-top: 20px;
            padding-bottom: 20px;
        }
        #td-one  td{
            font-size: 20px;
            width: 180px;
        }
        #td-two{
            text-align: center;
            margin-top: 50px;
        }
        #td-two td{
            width: 150px;
        }
    </style>
</head>
<body>
<center>
    <%
        String type= (String) session.getAttribute("type");
        if(type.equals("0")){
    %>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a>客户查询</a></td><td><a href="add.jsp">客户增加</a></td><td><a href="update.jsp">客户修改</a></td><td><a href="delete.jsp">客户删除</a></td></th>
    </table><%
    }else {
    %>
    <table id="td-one">
        <th style="padding-left: 92px"><td><a>客户查询</a></td><td><a>客户增加</a></td><td><a>客户修改</a></td><td><a>客户删除</a></td></th>
    </table><%
    }
    %>
    <hr>
    <%
        int pagesize = 5;
        int intpage;
        int pagecount = 0;
        int rowcount;
        int i = 0;
        String strpage;
        Connection con = JdbcUtils.getConnection();
        strpage = request.getParameter("page");
        if (strpage == null) {
            intpage = 1;
        } else {
            intpage = Integer.parseInt(strpage);
            if (intpage < 0) {
                intpage = 1;
            }
        }
        Statement st = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
        String sql = "select * from client";
        ResultSet rs = st.executeQuery(sql);
        rs.last();
        rowcount = rs.getRow();
        pagecount=(rowcount+pagesize-1)/pagesize;
        //判断现在的页码
        if (intpage > pagecount)
            intpage = pagecount;
        if (intpage > 0) {
            rs.absolute((intpage - 1) * pagesize + 1);
    %>
    <table id="td-two" border="1">
        <tr><th colspan="5"  style="font-size: 25px;letter-spacing: 5px">客户信息</th></tr>
        <tr>
            <td>姓名</td>
            <td>电话</td>
            <td>邮箱</td>
            <td>地址</td>
        </tr>
        <%
            i = 0;
            while (i < pagesize && !rs.isAfterLast()) {
        %>
        <tr>
            <td><%=rs.getString("clientName")%>
            </td>
            <td><%=rs.getString("clientTelephone")%>
            </td>
            <td><%=rs.getString("clientEmail")%>
            </td>
            <td><%=rs.getString("clientAddress")%>
            </td>
        </tr>

        <%
                    rs.next();
                    i++;
                }
            }
        %>
    </table>
    <hr>
    第<%=intpage%>页,共<%=pagecount%>页
    <%
        if(intpage<pagecount){
    %>
    <a href="lookClient.jsp?page=<%=intpage+1%>">下一页</a>
    <%
        }
        if(intpage>1){
    %>
    <a href="lookClient.jsp?page=<%=intpage-1%>">上一页</a>
    <%
        }
        JdbcUtils.release(rs,st,con);
    %>
</center>
</table>
</body></html>
